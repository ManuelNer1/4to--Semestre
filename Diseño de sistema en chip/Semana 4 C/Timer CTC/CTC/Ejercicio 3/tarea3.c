/*
 * tarea3.c
 *
 * Created: 20/04/2021 10:25:24 p. m.
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
      OCR0A = 249;            
      
      
      DDRB.1 = 1;       //Salida en PB1(OC1A)
      TCCR1A = 0x40;    //CTC
      TCCR1B = 0x09;    //CK
      OCR1AH = 1904>>8;
      OCR1AL = 1904&0xFF;
      
      DDRB.3 = 1;       //Salida en PB3(OC2A)
      TCCR2A = 0x42;    //CTC
      TCCR2B = 0x02;    //CK/8
      OCR2A = 226;
      
while (1)
    {
    }
}
