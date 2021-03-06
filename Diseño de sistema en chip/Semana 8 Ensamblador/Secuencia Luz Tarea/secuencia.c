/*
 * secuencia.c
 *
 * Created: 26/05/2021 06:34:59 p. m.
 * Author: ManuelNeri
 */

#include <mega2560.h>
#include <delay.h>
#include <io.h>
#include <stdio.h>
  
bit encendido=0;

void Configura595()
{
   DDRB.3=1;
   DDRB.4=1;
   DDRB.5=1;
}
#pragma warn-
void Write595asm (unsigned char dato)
{
#asm
   .equ PORTB= 0x05
   ;.equ PINB= 0x03 
   LD R21, Y
   CLR R22
   Ciclo1:
      SBRC R21,7
      SBI PORTB,4
      SBRS R21,7
      CBI PORTB,4
      
      SBI PORTB,3
      CBI PORTB,3
      LSL R21
      
      INC R22
      CPI R22,8
      BRNE Ciclo1
      
      SBI PORTB,5
      CBI PORTB,5    
#endasm      
}
#pragma warn+

 

unsigned char sec1 [14]={
        0x80,
        0x40,
        0x20,
        0x10,
        0x08,
        0x04,
        0x02,
        0x01,
        0x02,
        0x04,
        0x08,
        0x10,
        0x20,
        0x40
};

unsigned char sec2 [6]={
        0x81,
        0x42,
        0x24,
        0x18,
        0x24,
        0x42 
};

unsigned int cont; 
unsigned int cont2;
int acumulador = 2;
   
void main()
{
    
    DDRC=0xFF;
    PORTB.7=1;
     
    //unsigned char j;
    Configura595();
    
    while(1)
    {   
       
        //j=Read165asm();
        Write595asm(sec1[cont]);
        if(acumulador<200)
            acumulador = 2; 
        
        if(acumulador%2==0){ 
            cont=0;
        while (acumulador%2==0){
            if(PINB.7==0)
                acumulador++;  
            Write595asm(sec1[cont]);
            cont++;
            if(cont==14){
            cont=0;
            }
            delay_ms(300);
            
        }     
        } 
        
        if (acumulador%2!=0) {
            cont2=0;
        while (acumulador%2!=0){  
            delay_ms(30);
            if(PINB.7==0)
                acumulador++;
            Write595asm(sec2[cont2]);
            cont2++;
            if(cont2==6){
            cont2=0;
            }
            delay_ms(300); 
        
        } 
         
        }
    }   
}
