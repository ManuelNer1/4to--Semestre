/*
 * program.c
 *
 * Created: 26/04/2021 10:13:11 a. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>
#include <delay.h>

flash unsigned char seno[100]=
{
    128,136,144,152,160,167,175,182,189,196,203,209,215,221,226,231,235,239,243,246,
    249,251,253,254,255,255,255,254,253,251,249,246,243,239,235,231,226,221,215,209,
    203,196,189,182,175,167,160,152,144,136,128,120,112,104,96,89,81,74,67,60,53,47,
    41,35,30,25,21,17,13,10,7,5,3,2,1,1,1,2,3,5,7,10,13,17,21,25,30,35,41,47,53,60,
    67,74,81,89,96,104,112,120
};

unsigned char i;

void main(void)
{
      CLKPR = 0x80;
      CLKPR=0;          //Micro a 8MHz
      
      DDRD.6=1;         //PD6 de salida
      TCCR0A = 0x83;    //Fast PWM
      TCCR0B = 0x01;    //CK
      while (1)
      {
          for (i=0;i<100;i++)
          {      
            OCR0A = seno[i];
            delay_us(97);
          }
                
      }
}
