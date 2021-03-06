/*
 * onda.c
 *
 * Created: 20/04/2021 02:53:05 p. m.
 * Author: ManuelNeri
 */


#include <mega328p.h>

void main(void)
{
      CLKPR = 0x80;     //Habilita cambio de frecuencia
      CLKPR = 0;        //Micro a 8MHz
      
      PORTD.0 = 1;      //Pull-up en PD0
      DDRD.6 = 1;       //Salida en PD6 (OC0A)
      TCCR0A = 0x42;    //CTC
      TCCR0B = 0x02;    //CK/8
      OCR0A = 155;
      
      DDRB.1 = 1;       //Salida en PB1(OC1A)
      TCCR1A = 0x40;
      TCCR1B = 0x09;
      OCR1AH = 399>>8;
      OCR1AL = 399&0xFF;
      
      DDRB.3 = 1;
      TCCR2A = 0x42;
      TCCR2B = 0x02;
      OCR2A = 38;
      
      while (1)
      {
      // Please write your application code here
            if (PIND.0 == 0)
              TCCR0B = 0x02; //Timer CK/8
            else
              TCCR0B = 0x00; //Timer stop
      }
}
