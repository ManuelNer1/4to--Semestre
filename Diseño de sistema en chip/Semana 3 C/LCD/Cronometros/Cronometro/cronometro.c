/*
 * cronometro.c
 *
 * Created: 13/04/2021 09:16:42 a. m.
 * Author: nerij
 */
     #asm
    .equ __lcd_port=0x05
    .equ __lcd_EN=1
    .equ __lcd_RS=0
    .equ __lcd_D4=2
    .equ __lcd_D5=3
    .equ __lcd_D6=4
    .equ __lcd_D7=5
   #endasm

#include <io.h>
#include <delay.h>
#include <display.h>
#include <mega328p.h>
#include <stdio.h>

unsigned char decimas = 0, seg = 0, min = 0; 
char Cadena[8];
char mono0[8] = {0x0E,0x0E,0x0E,0x05,0x06,0x04,0x0A,0x11};
char mono1[8] = {0x0E,0x0E,0x0E,0x05,0x06,0x04,0x0A,0x14};

char aire0[8] = {0x00,0x00,0x02,0x1C,0x00,0x08,0x14,0x00};
char aire1[8] = {0x00,0x00,0x00,0x1E,0x00,0x04,0x1A,0x00};
 

void main(void)
{
    //Pull ups en PDO y PD1
    PORTD.0 = 1;
    PORTD.1 = 1;
    //Necesario para iniciar en el LCD
    SetupLCD();
    CreateChar(0,mono0);
    CreateChar(1,mono1);
    CreateChar(2,aire0);
    CreateChar(3,aire1);
    
    while (1)
    {
       //Desplegar tiempo en el LCD  
       sprintf(Cadena,"%02i:%02i.%i",min, seg, decimas);
       MoveCursor(4,0);  
       StringLCDVar(Cadena); 
       
       //Retardo de 1 decima de seg (0.1 seg)  
       delay_ms(62); 
       delay_us(350);
       
       //Actualizar tiempo 
       if (PIND.0 == 0)
            decimas++;
       if (decimas == 10)
       {
            decimas = 0;
            seg++;
            if (seg == 60)
            {
                seg = 0;
                min++;
                if (min == 60)
                    min = 0;
            }
       }   
        
       //Boton reset regresa todo a 0
       if (PIND.1 == 0)
       {
            decimas = 0;
            seg = 0;
            min = 0;
       }
       
       //Animacion NO DELAYS 
                  
        if (decimas == 5)
        {  
          MoveCursor(7,1);
          CharLCD(0);
          MoveCursor(6,1);
          CharLCD(2);
        } 
           
        if (decimas == 0 && 10)
        {  
          MoveCursor(7,1);
          CharLCD(1);
          MoveCursor(6,1);
          CharLCD(3); 
        
        }
       
    }
}
