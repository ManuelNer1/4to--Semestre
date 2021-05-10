/*
 * ondactc.c
 *
 * Created: 20/04/2021 11:56:21 a. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>

void main(void)
{
      DDRD.6=1;      //Salida en PD6 (OC0A)
      TCCR0A = 0x42; //CTC
      TCCR0B = 0x02; // CK/8
      OCR0A = 155;
      while (1)
      {
      // Please write your application code here

      }
}
