/*
 * programa2.c
 *
 * Created: 07/04/2021 10:19:50 a. m.
 * Author: nerij
 */

#include <mega2560.h>
#include <delay.h>

void main(void)
{

    DDRB.1 = 1;
    PORTB.0 = 1;
while (1)
    {
        if (PINB.0 == 0)
        {
            PORTB.1 = 1;
            delay_ms(125);
            PORTB.1 = 0;
            delay_ms(125);
        }
    }
}
