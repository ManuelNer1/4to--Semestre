/*
 * tarea2.c
 *
 * Created: 20/04/2021 05:44:36 p. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>

void main(void)
{
      DDRD.6 = 1;       //Salida en PD6 (OC0A)
      TCCR0A = 0x42;    //CTC
      TCCR0B = 0x02;    //CK/8
      OCR0A = 178;
      
      DDRB.1 = 1;       //Salida en PB1(OC1A)
      TCCR1A = 0x40;    //CTC
      TCCR1B = 0x09;    //CK
      OCR1AH = 1999>>8;
      OCR1AL = 1999&0xFF; 
      
      DDRB.3 = 1;       //Saida en PB3(OC2A)
      TCCR2A = 0x42;    //CTC
      TCCR2B = 0x03;    //CK/32
      OCR2A = 103;
      
while (1)
    {
    }
}
