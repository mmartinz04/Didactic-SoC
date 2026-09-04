#include <stdint.h>
#include "soc_ctrl.h"
#include "uart.h"

#define ACCEL_SS 1u
#define ACC_BASE 0x01510000u

#define REG32(off) (*(volatile uint32_t *)(ACC_BASE + (off)))

#define PMOD_IN   REG32(0x030u)
#define PMOD_OUT  REG32(0x034u)
#define PMOD_OE   REG32(0x038u)

#define PMOD_TEST_INPUT 0x3C5Au

int main(void)
{
    int errors = 0;
    volatile uint32_t delay;

    ss_init(ACCEL_SS);
    uart_init();

    /*
     * Route subsystem 1 to the PMOD connector.
     */
    pmod_target(ACCEL_SS);

    /*
     * Safe reset-like state: no outputs enabled.
     */
    PMOD_OE  = 0x0000u;
    PMOD_OUT = 0x0000u;

    if ((PMOD_OE & 0xFFFFu) != 0x0000u)
        errors++;

    /*
     * Test software-visible output register.
     */
    PMOD_OUT = 0xA55Au;
    PMOD_OE  = 0xFFFFu;

    if ((PMOD_OUT & 0xFFFFu) != 0xA55Au)
        errors++;

    if ((PMOD_OE & 0xFFFFu) != 0xFFFFu)
        errors++;

    /*
     * Second pattern is useful for inspecting the waveform.
     */
    PMOD_OUT = 0x5AA5u;
    PMOD_OE  = 0x00FFu;

    if ((PMOD_OUT & 0xFFFFu) != 0x5AA5u)
        errors++;

    if ((PMOD_OE & 0xFFFFu) != 0x00FFu)
        errors++;

    /*
     * Change every pin back to input mode before checking GPI.
     */
    PMOD_OE = 0x0000u;

    /*
     * Give a Questa force on pmod_gpi time to propagate through
     * the 2-flop synchronizer and through the firmware execution.
     */
    for (delay = 0; delay < 10000u; delay++) {
        __asm__ volatile ("nop");
    }

    if ((PMOD_IN & 0xFFFFu) != PMOD_TEST_INPUT)
        errors++;

    if (errors == 0) {
        uart_print("ACC_PMOD_PASS\r\n");
    } else {
        uart_print("ACC_PMOD_FAIL\r\n");
    }

    return errors;
}
