/*
 * LCDv2.c
 *
 * Created: 12/04/2021 07:41:42 p. m.
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

char car0[8]={0x00,0x0A,0x0A,0x00,0x04,0x11,0x0E,0x00};
char car1[8]={0x1F,0x15,0x15,0x1F,0x1F,0x0A,0x0A,0x1B};

void main(void)
{
    SetupLCD(); 
    CreateChar(0,car0);  
    CreateChar(1,car1);
       
    while (1)
    {
        MoveCursor(0,0);
        StringLCD("Dise"); 
        CharLCD(0xEE);
        StringLCD("o Sistemas"); 
        MoveCursor(4,1);
        StringLCD("en chip");
        CharLCD(0); 
        delay_ms(2000);
        EraseLCD();
        
        MoveCursor(2,0);
        StringLCD("Esta semana");
        MoveCursor(1,1);
        StringLCD("tenemos Intel");
        CharLCD(1); 
        delay_ms(2000);
        EraseLCD();

    }
}
