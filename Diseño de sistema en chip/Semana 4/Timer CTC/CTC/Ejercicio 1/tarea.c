/*
 * tarea.c
 *
 * Created: 20/04/2021 05:04:42 p. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>

void main(void)
{
      DDRD.6=1;          //Salida en PD6 (OC0A)
      TCCR0A = 0x42;    //CTC
      TCCR0B = 0x02;    //CK/8
      OCR0A = 32; 
      
      DDRB.1 = 1;       //Salida en PB1(OC1A)
      TCCR1A = 0x40;    //CTC
      TCCR1B = 0x09;    //CK
      OCR1AH = 293>>8;
      OCR1AL = 293&0xFF; 
      
      DDRB.3 = 1;       //Salida en PB3(OC2A)
      TCCR2A = 0x42;    //CTC
      TCCR2B = 0x02;    //CK/8
      OCR2A = 38;
         
      while (1)
      {
      // Please write your application code here

      }
}
