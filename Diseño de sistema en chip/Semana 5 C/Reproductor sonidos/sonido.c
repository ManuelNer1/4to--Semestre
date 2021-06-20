/*
 * sonido.c
 *
 * Created: 26/04/2021 12:05:59 p. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>
#include <delay.h>
#include "sonido1.c"
#include "sonido2.c"
#include "sonido3.c"

unsigned int i;

void main(void)
{   
      PORTC = 0x07;     //Pull-ups en PC0, PC1 Y PC2    
      DDRB.7 = 1;       //PD6 de salida 
      
      TCCR0A = 0x83;    //Fast PWM
      TCCR0B = 0x01;    //CK
      while (1)
      {
          if (PINC.2 == 0)
          {
              for (i=0;i<LimSonido1;i++)
              {      
                OCR0A = Sonido1[i];
                delay_us(125);
              }
          }
          if (PINC.1 == 0)
          {
              for (i=0;i<LimSonido2;i++)
              {      
                OCR0A = Sonido2[i];
                delay_us(125);
              }
          }
          if (PINC.0 == 0)
          {
              for (i=0;i<LimSonido3;i++)
              {      
                OCR0A = Sonido3[i];
                delay_us(125);
              }
          }
                
      }
}
