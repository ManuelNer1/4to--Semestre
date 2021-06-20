/*
 * conteo.c
 *
 * Created: 23/04/2021 11:13:28 a. m.
 * Author: 
 *        Manuel
 *        Oscar 
 *        Ismael 
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
#include <delay.h>
#include <display.h>
#include <stdio.h> 

signed int unidad = 0, decena = 0, centena = 0;
char valor[2];

void main(void)
{
    SetupLCD();
    MoveCursor(1,0);
    StringLCD("People Counter"); 
    PORTC = 0x07;       //Pull-ups en PC0, PC1 y PC2
    
    while (1)
    {
      sprintf(valor,"%i%i%i",centena,decena,unidad);
      MoveCursor(5,1);
      StringLCDVar(valor); 
       
      //SUMA
      if (PINC.0 == 0)
      {          
          if (unidad == 9 && decena == 9 && centena ==9)
          {
            unidad = 9;
          }
          else { 
          unidad++;          
          if (unidad == 10)
          {
                unidad = 0;
                decena++;
                if (decena == 10)
                {
                    decena = 0;                        
                    centena ++; 
                    if (centena == 10)
                    {                      
                      centena = 0;                     
                    }
                }
          }
          }
          while (PINC.0 == 0);
      }
      
      //RESTA
      if (PINC.1 == 0)
      {  
            unidad--;
          if (unidad == -1 && decena != 0)
          {
              unidad = 9;
              decena--;
          }
                      
          if (unidad == -1 && decena == 0)
          {
              unidad = 9;
              decena = 9;
              centena--;        
          }
          if (unidad == 9 && decena == 9 && centena == -1)
          {
              unidad = 0;
              decena = 0;
              centena = 0;
          }          
          while (PINC.1 == 0);
      }
      
      //CLEAR      
      if (PINC.2 == 0)
      {
            unidad = 0;
            decena = 0;
            centena = 0;
      }                          
    }
}
