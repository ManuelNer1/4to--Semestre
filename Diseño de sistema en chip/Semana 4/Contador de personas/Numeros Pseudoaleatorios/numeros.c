/*
 * numeros.c
 *
 * Created: 19/04/2021 09:56:20 a. m.
 * Author: ManuelNeri
 */

   #asm
    .equ __lcd_port=0x02
    .equ __lcd_EN=1
    .equ __lcd_RS=0
    .equ __lcd_D4=2
    .equ __lcd_D5=3
    .equ __lcd_D6=4
    .equ __lcd_D7=5
   #endasm

#include <mega2560.h>
#include <display.h>
#include <delay.h>
#include <stdlib.h>
#include <stdio.h>

unsigned int num;
char Cadena[4];
unsigned char i;

void main(void)
{
      SetupLCD();
      MoveCursor(1,0);
      StringLCD("Random Numbers");
      PORTC.0 = 1; //PC0 con pull-up switch
      DDRC.1 = 1;  //PC1 de salida Bocina   
      TCCR0B = 0x01;
while (1)
    {
      if(PINC.0==0)
      {
            srand(TCNT0);
            num = rand()%1000;
            sprintf(Cadena,"%003i",num);
            MoveCursor(6,1);
            StringLCDVar(Cadena);
            for (i=0;i<80;i++)
            {
                  PORTC.1 = 1;
                  delay_us(1250);
                  PORTC.1 = 0;
                  delay_us(1250);
            }
            while(PINC.0 == 0);
            delay_ms(10);
      }
    }
}
