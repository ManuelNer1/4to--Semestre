/*
 * BlikingLed.c
 *
 * Created: 08/04/2021 09:48:16 a. m.
 * Author: nerij
 */

#include <mega2560.h>
#include <delay.h>

void main(void)
{
    DDRB.7 = 1;     //PB1 de salida
   // PORTB.0 = 1;    //Pull-up en PB0
    while (1)
    {
        //if (PINB.0 == 0)  //switch presionado
            PORTB.7 = 1;
            delay_ms(150000000);
       // else
            PORTB.7 = 0;
            delay_ms(15);
    }
}
