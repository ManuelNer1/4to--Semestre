/*
 * Segundero.c
 *
 * Created: 12/04/2021 10:19:23 a. m.
 * Author: nerij
 */
     #asm
    .equ __lcd_port=0x08
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
#include <mega2560.h>
#include <stdio.h>

unsigned char seg = 250 ;

char Cadena[20];                            

void main(void)
{
    //Para que funcione mi programa necesita esta parte
    SetupLCD(); 
    
    MoveCursor(0,0);                       //Mueve cursor en X Y
    StringLCD("Tiempo en Seg");            //Esto es lo que quiero imprimir
    while (1)
    {
        //Imprimir tiempo en el LCD 
        // Imprime Cadena, numero formato sin signo, seg   **los espacios en %u significa que se borrara todo el numero
        sprintf(Cadena,"%u   ",seg); 
        MoveCursor(0,1);
        StringLCDVar(Cadena);
        seg++;
        delay_ms(1000);
    }

}
