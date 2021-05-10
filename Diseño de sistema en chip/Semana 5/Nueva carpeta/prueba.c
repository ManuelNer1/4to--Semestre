/*
 * PracticaReloj.c
 *
 * Created: 19/06/2018 12:35:24 p. m.
 * Author: Oscar
           Manuel
           Ismael   Proyecto a 1MHz
 */
 
  #asm
    .equ __lcd_port=0x02   //LCD en PuertoA
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
#include <stdio.h>

unsigned char i=0;
signed char H=0,M=0,S=0;
char Cadena[17];

void main(void){
    CLKPR=0x80;
    CLKPR=0x04;     //Arduino nano trabajara a 16MHz/16=1MHz        
    
    SetupLCD();
    
    TCCR1A=0;
    TCCR1B=0x0A;    //Timer 1 en CTC con CK/8
    OCR1AH=31249/256;
    OCR1AL=31249%256;
    
    PORTC.0=1;
    PORTC.1=1;
    PORTC.2=1;
    PORTC.3=1;
    PORTC.4=1;  
   
    while (1){      // El ciclo completo tarda 0.25seg
       //Imprimir hora en el LCD 
       
       while(TIFR1.OCF1A==0);   //Espera a 0.25seg
       TIFR1.OCF1A=1;           //Borra Bandera
       i++;   
      
       if (i==4){
            i=0;
            S++;
            if (S==60){
                S=0;
                M++;
                if (M==60){   
                    M=0;
                    H++;
                    if (H==24)
                        H=0;
                }     
                
            }
       }  
       
       if (PINC.4==0){
              H++;       
       }
       if (PINC.3==0){
              H--;
       }
       if (PINC.2==0){
              M++;
       }
       if (PINC.1==0){
              M=M-1;
       }
       if (PINC.0==0){
              S=0;
       } 
       sprintf(Cadena,"%02u:%02u:%02u",H,M,S);
       MoveCursor(4,0);
       StringLCDVar(Cadena);
       
       //Revisar switches
       
      
        
         
    }
}