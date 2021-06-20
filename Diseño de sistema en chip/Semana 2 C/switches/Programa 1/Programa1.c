/*
 * Programa1.c
 *
 * Created: 07/04/2021 10:14:40 a. m.
 * Author: nerij
 */

#include <mega2560.h>

void main(void)
{
    DDRB.1 = 1;        //PB1 de salida
    PORTB.0 = 1;       //Pull - up en PB0 
while (1)
    {
        if (PINB.0 == 0)  //SWITCH PRESIONADO
            PORTB.1 = 1;
        else
            PORTB.1 = 0;
    }
}
