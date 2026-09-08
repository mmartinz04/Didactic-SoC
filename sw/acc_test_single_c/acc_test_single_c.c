#include <stdint.h>
#include "soc_ctrl.h"
#include "uart.h"

/*
 * Single-output-buffer ownership and A/B preload regression.
 *
 * Test sequence:
 *
 *   Run 1:
 *     8x8 A0 * I(B0) = A0
 *
 *   While Run 1 is active:
 *     preload a future 2x2 calculation into inactive A1/B1.
 *
 *   After Run 1:
 *     verify C0,
 *     attempt START without ACK,
 *     verify START is rejected and C0 is unchanged.
 *
 *   Then:
 *     ACK the old result,
 *     change dimensions to 2x2,
 *     run the already-preloaded A1/B1 calculation,
 *     verify the new result in the same C0 buffer.
 */

#define ACCEL_SS          1u
#define ACC_BASE          0x01510000u

#define REG32(off)        (*(volatile uint32_t *)(ACC_BASE + (off)))

#define CONTROL           REG32(0x000u)
#define STATUS            REG32(0x004u)

#define BUFFER_SELECT     REG32(0x008u)
#define BUFFER_ADDR       REG32(0x00Cu)
#define BUFFER_DATA       REG32(0x010u)

#define RESULT_ADDR       REG32(0x014u)
#define RESULT_DATA       REG32(0x018u)

#define A_ROWS            REG32(0x020u)
#define A_COLS            REG32(0x024u)
#define B_ROWS            REG32(0x028u)
#define B_COLS            REG32(0x02Cu)

#define CONTROL_START     (1u << 0)
#define CONTROL_ACK_DONE  (1u << 1)

#define STATUS_BUSY       (1u << 0)
#define STATUS_DONE       (1u << 1)
#define STATUS_DIM_ERR    (1u << 2)

#define BUF_A0            0u
#define BUF_A1            1u
#define BUF_B0            2u
#define BUF_B1            3u

/*
 * Physical accelerator stride.
 *
 * Even for the logical 2x2 calculation, address [row][col] is:
 *
 *     row * 8 + col
 */
#define HW_MAT_DIM        8u

static void accel_ack_done(void)
{
    CONTROL = CONTROL_ACK_DONE;
}

static void accel_set_dims(uint32_t a_rows,
                           uint32_t a_cols,
                           uint32_t b_rows,
                           uint32_t b_cols)
{
    A_ROWS = a_rows;
    A_COLS = a_cols;
    B_ROWS = b_rows;
    B_COLS = b_cols;
}

static void accel_write_buffer(uint32_t buffer_id,
                               uint32_t row,
                               uint32_t col,
                               int8_t value)
{
    uint32_t addr = row * HW_MAT_DIM + col;

    BUFFER_SELECT = buffer_id;
    BUFFER_ADDR   = addr;
    BUFFER_DATA   = (uint32_t)(uint8_t)value;
}

static int32_t accel_read_result(uint32_t row, uint32_t col)
{
    uint32_t addr = row * HW_MAT_DIM + col;

    RESULT_ADDR = addr;
    return (int32_t)RESULT_DATA;
}

static int accel_wait_busy(void)
{
    uint32_t timeout = 100000u;

    while ((STATUS & STATUS_BUSY) == 0u) {
        if ((STATUS & STATUS_DONE) != 0u) {
            return 1;
        }

        if (timeout == 0u) {
            return 1;
        }

        timeout--;
    }

    return 0;
}

static int accel_wait_done(void)
{
    uint32_t timeout = 1000000u;

    while ((STATUS & STATUS_DONE) == 0u) {
        if (timeout == 0u) {
            return 1;
        }

        timeout--;
    }

    return 0;
}

/*
 * Run 1:
 *
 * A0[row][col] = row * 8 + col + 1
 * B0            = identity
 *
 * Therefore:
 *
 * C = A0
 */
static int8_t large_a_value(uint32_t row, uint32_t col)
{
    return (int8_t)(row * HW_MAT_DIM + col + 1u);
}

static void load_large_run(void)
{
    uint32_t row;
    uint32_t col;

    for (row = 0u; row < HW_MAT_DIM; row++) {
        for (col = 0u; col < HW_MAT_DIM; col++) {

            accel_write_buffer(BUF_A0,
                               row,
                               col,
                               large_a_value(row, col));

            accel_write_buffer(BUF_B0,
                               row,
                               col,
                               (row == col) ? 1 : 0);
        }
    }
}

static int verify_large_result(void)
{
    uint32_t row;
    uint32_t col;
    int errors = 0;

    for (row = 0u; row < HW_MAT_DIM; row++) {
        for (col = 0u; col < HW_MAT_DIM; col++) {

            int32_t result =
                accel_read_result(row, col);

            int32_t expected =
                (int32_t)large_a_value(row, col);

            if (result != expected) {
                errors++;
            }
        }
    }

    return errors;
}

/*
 * Future Run 2:
 *
 *       [  3  -2 ]       [  2   1 ]
 * A1 =  [        ]  B1 = [        ]
 *       [  5   4 ]       [ -1   3 ]
 *
 * Expected:
 *
 *       [  8  -3 ]
 * C  =  [        ]
 *       [  6  17 ]
 *
 * These helper functions avoid initialized local arrays, which can make
 * the bare-metal compiler emit memcpy.
 */

static int8_t small_a_value(uint32_t row, uint32_t col)
{
    if (row == 0u) {
        return (col == 0u) ? 3 : -2;
    }

    return (col == 0u) ? 5 : 4;
}

static int8_t small_b_value(uint32_t row, uint32_t col)
{
    if (row == 0u) {
        return (col == 0u) ? 2 : 1;
    }

    return (col == 0u) ? -1 : 3;
}

static int32_t small_expected(uint32_t row, uint32_t col)
{
    if (row == 0u) {
        return (col == 0u) ? 8 : -3;
    }

    return (col == 0u) ? 6 : 17;
}

/*
 * Preload the future A1/B1 calculation.
 *
 * The caller performs this while Run 1 is active.
 *
 * Do NOT change the matrix dimension registers here. Those registers
 * describe the calculation currently executing.
 */
static uint32_t preload_small_run(void)
{
    uint32_t row;
    uint32_t col;
    uint32_t writes_while_busy = 0u;

    for (row = 0u; row < 2u; row++) {
        for (col = 0u; col < 2u; col++) {

            /*
             * Count pairs whose loading begins while the accelerator
             * still reports BUSY. We only require at least one pair to
             * overlap the active calculation.
             */
            if ((STATUS & STATUS_BUSY) != 0u) {
                writes_while_busy++;
            }

            accel_write_buffer(BUF_A1,
                               row,
                               col,
                               small_a_value(row, col));

            accel_write_buffer(BUF_B1,
                               row,
                               col,
                               small_b_value(row, col));
        }
    }

    return writes_while_busy;
}

static int verify_small_result(void)
{
    uint32_t row;
    uint32_t col;
    int errors = 0;

    for (row = 0u; row < 2u; row++) {
        for (col = 0u; col < 2u; col++) {

            int32_t result =
                accel_read_result(row, col);

            int32_t expected =
                small_expected(row, col);

            if (result != expected) {
                errors++;
            }
        }
    }

    return errors;
}

int main(void)
{
    int errors = 0;
    uint32_t overlap_writes;
    uint32_t status;
    uint32_t saw_illegal_busy = 0u;
    volatile uint32_t delay;

    ss_init(ACCEL_SS);
    uart_init();

    /*
     * Start from a known software-visible state.
     */
    accel_ack_done();

    /*
     * ------------------------------------------------------------
     * RUN 1: 8x8, active A0/B0 -> single C0
     * ------------------------------------------------------------
     */
    accel_set_dims(8u, 8u, 8u, 8u);
    load_large_run();

    CONTROL = CONTROL_START;

    if (accel_wait_busy() != 0) {
        uart_print("ACC_SINGLE_C_FAIL_BUSY\r\n");
        return 10;
    }

    /*
     * While A0/B0 are being used for Run 1, preload the future
     * calculation into the inactive A1/B1 buffers.
     *
     * Dimensions deliberately remain 8x8 until Run 1 has completed.
     */
    overlap_writes = preload_small_run();

    if (overlap_writes == 0u) {
        uart_print("ACC_SINGLE_C_FAIL_NO_OVERLAP\r\n");
        return 11;
    }

    if (accel_wait_done() != 0) {
        uart_print("ACC_SINGLE_C_FAIL_RUN1_TIMEOUT\r\n");
        return 12;
    }

    if ((STATUS & STATUS_DIM_ERR) != 0u) {
        uart_print("ACC_SINGLE_C_FAIL_RUN1_DIM\r\n");
        return 13;
    }

    /*
     * Verify the entire 8x8 result.
     *
     * This also proves that writes to inactive A1/B1 during Run 1
     * did not corrupt the active A0/B0 calculation.
     */
    if (verify_large_result() != 0) {
        uart_print("ACC_SINGLE_C_FAIL_RUN1_RESULT\r\n");
        return 14;
    }

    /*
     * ------------------------------------------------------------
     * SINGLE-C OWNERSHIP TEST
     * ------------------------------------------------------------
     *
     * Do NOT ACK.
     *
     * C0 still belongs to software. A plain START must therefore
     * be rejected.
     */
    CONTROL = CONTROL_START;

    /*
     * Give an incorrectly accepted launch enough time to reveal itself.
     */
    for (delay = 0u; delay < 2000u; delay++) {
        status = STATUS;

        if ((status & STATUS_BUSY) != 0u) {
            saw_illegal_busy = 1u;
        }

        __asm__ volatile ("nop");
    }

    status = STATUS;

    if (saw_illegal_busy != 0u) {
        uart_print("ACC_SINGLE_C_FAIL_START_NOT_BLOCKED\r\n");
        return 20;
    }

    if ((status & STATUS_DONE) == 0u) {
        uart_print("ACC_SINGLE_C_FAIL_DONE_LOST\r\n");
        return 21;
    }

    /*
     * Most important check:
     *
     * The rejected START must not have overwritten the old C0 result.
     */
    if (verify_large_result() != 0) {
        uart_print("ACC_SINGLE_C_FAIL_C_OVERWRITTEN\r\n");
        return 22;
    }

    /*
     * ------------------------------------------------------------
     * RELEASE C0
     * ------------------------------------------------------------
     *
     * ACK invalidates/releases the result logically.
     *
     * It does NOT require the physical C0 memory to be cleared.
     */
    accel_ack_done();

    if ((STATUS & STATUS_DONE) != 0u) {
        uart_print("ACC_SINGLE_C_FAIL_ACK\r\n");
        return 23;
    }

    /*
     * ------------------------------------------------------------
     * RUN 2: 2x2 using previously preloaded A1/B1 -> same C0
     * ------------------------------------------------------------
     *
     * Only now change the global matrix dimensions.
     */
    accel_set_dims(2u, 2u, 2u, 2u);

    CONTROL = CONTROL_START;

    if (accel_wait_done() != 0) {
        uart_print("ACC_SINGLE_C_FAIL_RUN2_TIMEOUT\r\n");
        return 30;
    }

    if ((STATUS & STATUS_DIM_ERR) != 0u) {
        uart_print("ACC_SINGLE_C_FAIL_RUN2_DIM\r\n");
        return 31;
    }

    if (verify_small_result() != 0) {
        uart_print("ACC_SINGLE_C_FAIL_RUN2_RESULT\r\n");
        return 32;
    }

    accel_ack_done();

    if ((STATUS & STATUS_DONE) != 0u) {
        uart_print("ACC_SINGLE_C_FAIL_FINAL_ACK\r\n");
        return 33;
    }

    if (errors == 0) {
        uart_print("ACC_SINGLE_C_PASS\r\n");
    }
    else {
        uart_print("ACC_SINGLE_C_FAIL\r\n");
    }

    return errors;
}
