 #include <stdint.h>
#include "soc_ctrl.h"
#include "uart.h"

/*
 * Change only this line when switching build environments:
 *
 *   0 -> QuestaSim / sw/common/uart.h      uses uart_init()
 *   1 -> FPGA     / fpga/sw/common/uart.h uses uart_init(freq, baud)
 */
#define UART_INIT_USES_ARGS 0

#define UART_FREQ_HZ        25000000u
#define UART_BAUD           9600u

/*
 * Accelerator appears to be the TUM subsystem, same convention as the other group:
 *   SS index 1  -> APB base 0x01051000
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
 * Important: this is the physical RTL stride, not the logical matrix size.
 * Your compiled tum_ss has default MAT_DIM = 8, so row/col addressing is:
 *   addr = row * 8 + col
 */
#define HW_MAT_DIM        8u

/*
 * Return codes:
 *
 *   0             all tests passed
 *   1..99         result mismatches
 *   100 + run_id  timeout during run_id
 *   200 + run_id  dimension error during run_id
 */
#define ERR_TIMEOUT_BASE  100
#define ERR_DIM_BASE      200

static void test_uart_init(void)
{
#if UART_INIT_USES_ARGS
    uart_init(UART_FREQ_HZ, UART_BAUD);
#else
    uart_init();
#endif
}

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

    /*
     * A/B buffers use int8 internally.
     * Only the low 8 bits are routed to activation/weight buffers.
     */
    BUFFER_DATA   = (uint32_t)(uint8_t)value;
}

static int32_t accel_read_result(uint32_t row, uint32_t col)
{
    uint32_t addr = row * HW_MAT_DIM + col;

    RESULT_ADDR = addr;
    return (int32_t)RESULT_DATA;
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

static int accel_start_checked(uint32_t run_id)
{
    CONTROL = CONTROL_START;

    if ((STATUS & STATUS_DIM_ERR) != 0u) {
        accel_ack_done();
        return ERR_DIM_BASE + (int)run_id;
    }

    return 0;
}

/*
 * Test-data generation.
 *
 * There are intentionally no initialized local arrays in this file. With
 * -nostdlib, initialized local arrays can make GCC emit a memcpy call, but
 * memcpy is not linked in your bare-metal build.
 */
static int8_t base_a_value(uint32_t row, uint32_t col)
{
    return (int8_t)((row * HW_MAT_DIM) + col + 1u);
}

static int8_t a_value_for_run(uint32_t run_id, uint32_t row, uint32_t col)
{
    if (run_id == 4u) {
        return 1;       /* Run 4: all-ones A matrix */
    }

    return base_a_value(row, col);
}

static int8_t b_value_for_run(uint32_t run_id, uint32_t row, uint32_t col)
{
    if (row != col) {
        return 0;
    }

    if (run_id == 1u) {
        return 1;       /* Identity */
    }

    if (run_id == 2u) {
        return 2;       /* 2 * Identity */
    }

    if (run_id == 3u) {
        return -1;      /* -Identity */
    }

    return 1;           /* Run 4: Identity */
}

static int32_t expected_value_for_run(uint32_t run_id,
                                      uint32_t row,
                                      uint32_t col)
{
    int32_t a = (int32_t)base_a_value(row, col);

    if (run_id == 1u) {
        return a;       /* A * I = A */
    }

    if (run_id == 2u) {
        return 2 * a;   /* A * 2I = 2A */
    }

    if (run_id == 3u) {
        return -a;      /* A * -I = -A */
    }

    return 1;           /* ones * I = ones */
}

static void load_matrix_pair_for_run(uint32_t run_id,
                                     uint32_t buffer_a,
                                     uint32_t buffer_b)
{
    uint32_t row;
    uint32_t col;

    for (row = 0u; row < HW_MAT_DIM; row++) {
        for (col = 0u; col < HW_MAT_DIM; col++) {
            accel_write_buffer(buffer_a,
                               row,
                               col,
                               a_value_for_run(run_id, row, col));

            accel_write_buffer(buffer_b,
                               row,
                               col,
                               b_value_for_run(run_id, row, col));
        }
    }
}

static int verify_result(uint32_t run_id)
{
    uint32_t row;
    uint32_t col;
    int errors = 0;

    for (row = 0u; row < HW_MAT_DIM; row++) {
        for (col = 0u; col < HW_MAT_DIM; col++) {
            int32_t result;
            int32_t expected;

            result   = accel_read_result(row, col);
            expected = expected_value_for_run(run_id, row, col);

            if (result != expected) {
                errors++;
            }
        }
    }

    return errors;
}

static int wait_and_verify_run(uint32_t run_id)
{
    int errors;

    if (accel_wait_done() != 0) {
        accel_ack_done();
        return ERR_TIMEOUT_BASE + (int)run_id;
    }

    /*
     * Verify before ACK. The result-read mux should still remember the last
     * result buffer after ACK, but verifying before ACK keeps the sequence
     * closest to the hardware event that produced the result.
     */
    errors = verify_result(run_id);

    accel_ack_done();

    return errors;
}

int main(void)
{
    int errors = 0;
    int run_result;

    ss_init(ACCEL_SS);
    test_uart_init();

    /*
     * All runs are 8x8.
     *
     * Run order follows accelerator_control active_buf toggling:
     *
     *   Run 1: active_buf = 0 -> A0/B0/C0, A * I = A
     *   Run 2: active_buf = 1 -> A1/B1/C1, A * 2I = 2A
     *   Run 3: active_buf = 0 -> A0/B0/C0, A * -I = -A
     *   Run 4: active_buf = 1 -> A1/B1/C1, ones * I = ones
     *
     * Overlap schedule:
     *
     *   1. Preload run 1 into A0/B0.
     *   2. Start run 1.
     *   3. While run 1 computes, preload run 2 into A1/B1.
     *   4. Wait for run 1, verify C0, ACK.
     *   5. Start run 2.
     *   6. While run 2 computes, preload run 3 into A0/B0.
     *   7. Wait for run 2, verify C1, ACK.
     *   8. Start run 3.
     *   9. While run 3 computes, preload run 4 into A1/B1.
     *  10. Wait for run 3, verify C0, ACK.
     *  11. Start run 4.
     *  12. Wait for run 4, verify C1, ACK.
     */

    accel_ack_done();
    accel_set_dims(HW_MAT_DIM, HW_MAT_DIM, HW_MAT_DIM, HW_MAT_DIM);

    /*
     * PRELOAD RUN 1 -> A0/B0
     */
    load_matrix_pair_for_run(1u, BUF_A0, BUF_B0);

    /*
     * START RUN 1, then overlap-load RUN 2 -> A1/B1.
     */
    run_result = accel_start_checked(1u);
    if (run_result != 0) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }

    load_matrix_pair_for_run(2u, BUF_A1, BUF_B1);

    run_result = wait_and_verify_run(1u);
    if (run_result >= ERR_TIMEOUT_BASE) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }
    errors += run_result;

    /*
     * START RUN 2, then overlap-load RUN 3 -> A0/B0.
     */
    run_result = accel_start_checked(2u);
    if (run_result != 0) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }

    load_matrix_pair_for_run(3u, BUF_A0, BUF_B0);

    run_result = wait_and_verify_run(2u);
    if (run_result >= ERR_TIMEOUT_BASE) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }
    errors += run_result;

    /*
     * START RUN 3, then overlap-load RUN 4 -> A1/B1.
     */
    run_result = accel_start_checked(3u);
    if (run_result != 0) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }

    load_matrix_pair_for_run(4u, BUF_A1, BUF_B1);

    run_result = wait_and_verify_run(3u);
    if (run_result >= ERR_TIMEOUT_BASE) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }
    errors += run_result;

    /*
     * START RUN 4. No following preload is needed.
     */
    run_result = accel_start_checked(4u);
    if (run_result != 0) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }

    run_result = wait_and_verify_run(4u);
    if (run_result >= ERR_TIMEOUT_BASE) {
        uart_print("ACC_OVL_ERROR\r\n");
        return run_result;
    }
    errors += run_result;

    if (errors == 0) {
        uart_print("ACC_OVL_PASS\r\n");
    } else {
        uart_print("ACC_OVL_FAIL\r\n");
    }

    return errors;
}

