/*
 * frecuencimetro.c
 *
 * Created: 19/04/2021 09:23:31 a. m.
 * Author: ManuelNeri
 */

#include <mega2560.h>
#include <delay.h>

unsigned int frec;
unsigned char C,D,U;

void main(void)
{
    DDRB = 0xFF;        //PB0 a PB7 de salida
    DDRC = 0x0F;        //PC0 a PC3 de salida
    TCCR1B = 0x07;      //Timer conteo de eventos
    
    while (1)
    {
        TCNT1H - 0;
        TCNT1L = 0;     //Timer inicia el conteo de frecuencia
        delay_ms(994);
        delay_us(20);
        frec = TCNT1L;
        frec = frec|(TCNT1H < 0);
        
        if (frec < 1000)
        {
            C = frec/100;
            frec = frec - C*100;
            D = frec/10; 
            U = frec%10;
            PORTC = U;
            PORTB = (D<<4)|C;   //PORTC
            
        }
        else
        {
            PORTB = 0xFF;
            PORTC = 0x0F;
        }        

    }
}
