/*
 * onda.c
 *
 * Created: 19/04/2021 01:43:54 p. m.
 * Author: ManuelNeri
 */

#include <io.h>

void delay5msT0()
{
      TCCR0B = 0x03; //Timer cuenta tiempo a CK/64
      TCNT0 = 100;   // 256 - 156(cuentas) = 100 para los 5ms    
      while(TIFR0.0 == 0);  //Espera que overflow prenta  REGISTRO DEL TIMER 
      
      TIFR0.0 = 1;   //Borra overflow
      TCCR0B = 0;    //Apaga Timer
}

void main(void)
{
      DDRB.0 = 1;
      while (1)
      {
        PORTB.0 = 1;
        delay5msT0();
        PORTB.0 = 0;
        delay5msT0();      
      }
}
