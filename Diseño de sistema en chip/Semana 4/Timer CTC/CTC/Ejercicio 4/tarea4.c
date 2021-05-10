/*
 * tarea4.c
 *
 * Created: 21/04/2021 07:41:47 a. m.
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
      TCCR0B = 0x04;    //CK/256
      OCR0A = 103;            
      
      
      DDRB.1 = 1;       //Salida en PB1(OC1A)
      TCCR1A = 0x40;    //CTC
      TCCR1B = 0x09;    //CK
      OCR1AH = 15999>>8;
      OCR1AL = 15999&0xFF;
      
      DDRB.3 = 1;       //Salida en PB3(OC2A)
      TCCR2A = 0x42;    //CTC
      TCCR2B = 0x04;    //CK/64
      OCR2A = 178;
while (1)
    {
    }
}
