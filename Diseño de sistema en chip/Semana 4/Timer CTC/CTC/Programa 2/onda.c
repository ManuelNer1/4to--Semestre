/*
 * onda.c
 *
 * Created: 20/04/2021 02:31:50 p. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>

void main(void)
{
      PORTD.0 = 1;      //Pull-up en PD0
      DDRD.6 = 1;       //Salida en PD6 (OC0A)
      TCCR0A = 0x42;    //CTC
      TCCR0B = 0x02;    //CK/8
      OCR0A = 155;
      while (1)
      {
      // Please write your application code here
            if (PIND.0 == 0)
              TCCR0B = 0x02; //Timer CK/8
            else
              TCCR0B = 0x00; //Timer stop
      }
}
