/*
 * onda.c
 *
 * Created: 19/04/2021 02:21:10 p. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>


void delay5msT1()
{
      TCCR1B = 0x01; //Timer cuenta tiempo a CK
      TCNT1H = 55536/256;   
      TCNT1L = 55536%256;   
      while(TIFR1.0 == 0);  //Espera que overflow prenta  REGISTRO DEL TIMER 
      
      TIFR1.0 = 1;   //Borra overflow
      TCCR1B = 0;    //Apaga Timer
}

void main(void)
{
      DDRB.0 = 1;
      while (1)
      {
        PORTB.0 = 1;
        delay5msT1();
        PORTB.0 = 0;
        delay5msT1();      
      }
}

