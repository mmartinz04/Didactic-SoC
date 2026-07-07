#include <stdint.h>
#include "soc_ctrl.h"
#include "uart.h"

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
 * this is the physical RTL stride, not the logical matrix size.
 * The compiled tum_ss has default MAT_DIM = 8, so row/col addressing is:
 *   addr = row * 8 + col
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

static int8_t test_a_value(uint32_t row, uint32_t col)
{
    return (int8_t)((row * HW_MAT_DIM) + col + 1u);
}

int main(void)
{
    uint32_t row;
    uint32_t col;
    int errors = 0;

    ss_init(ACCEL_SS);
    uart_init(25000000, 9600);

    /*
     * Clear stale DONE/DIM_ERR from a previous run.
     */
    accel_ack_done();

    /*
     * A is 8x8, B is 8x8 identity.
     * Expected result: C = A.
     */
    accel_set_dims(8, 8, 8, 8);

    /*
     * Write A into A0 and identity matrix into B0.
     *
     * A[row][col] = row * 8 + col + 1
     *
     * This avoids a local initialized array, so the compiler
     * should no longer generate a memcpy call.
     */
    for (row = 0; row < HW_MAT_DIM; row++) {
        for (col = 0; col < HW_MAT_DIM; col++) {
            accel_write_buffer(BUF_A0,
                               row,
                               col,
                               test_a_value(row, col));

            accel_write_buffer(BUF_B0,
                               row,
                               col,
                               (row == col) ? 1 : 0);
        }
    }

    CONTROL = CONTROL_START;

    if (accel_wait_done() != 0) {
        uart_print("ACC_TEST_2 TIMEOUT\n");
        return 100;
    }

    /*
     * Verify C == A.
     */
    for (row = 0; row < HW_MAT_DIM; row++) {
        for (col = 0; col < HW_MAT_DIM; col++) {
            int32_t result   = accel_read_result(row, col);
            int32_t expected = (int32_t)test_a_value(row, col);

            if (result != expected) {
                errors++;
            }
        }
    }

    accel_ack_done();

    if (errors == 0) {
        uart_print("ACC_TEST_2 PASS: 8x8 A * I = A\n");
    } else {
        uart_print("ACC_TEST_2 FAIL\n");
    }

    return errors;
}

