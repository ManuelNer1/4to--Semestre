/*
 * programa3.c
 *
 * Created: 07/04/2021 10:29:53 a. m.
 * Author: nerij
 */


#include <mega2560.h>
#include <delay.h>

bit encendido = 0;

void main(void)
{

    DDRB.1 = 1;      // PB1 de salida
    PORTB.0 = 1;     // Pull-up en PB0
while (1)
    {
        if (PINB.0 == 0)   //switch encendido
        {
          encendido = ~encendido;
          PORTB.1 = encendido;
          delay_ms(300);    // rebote el presionar     
            while (PINB.0 = 0); // Espera a soltar boton  
            delay_ms(10);
        }
    }
}

