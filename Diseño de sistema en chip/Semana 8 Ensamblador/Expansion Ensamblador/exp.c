/*
 * exp.c
 *
 * Created: 24/05/2021 11:53:49 a. m.
 * Author: ManuelNeri
 */

#include <io.h>
//595(escritura)
#define DATA_595 PORTB.4
#define STCLK_595 PORTB.5
#define SHCLK_595 PORTB.3
//165
#define CLK_165 PORTB.2
#define LOAD_165 PORTB.1
#define DATA_165 PINB.0

void Configura595()
{
   DDRB.3=1;
   DDRB.4=1;
   DDRB.5=1;
}

#pragma warn-
void Write595 (unsigned char dato)
{
   #asm
    .equ PORTB = 0x05;
    LD R21, Y
    ;Clear R22
    CLR R22 
    ;Inicia Ciclo
    CicloWrite:
        SBRC R21,7
        SBI PORTB,4
        SBRS R21,7
        ;Compara PORTB CON 4
        CBI PORTB,4
        
        SBI PORTB,3 
        ;Compara PORTB CON 3
        CBI PORTB,3
        LSL R21
        
        INC R22
        ;Compara R22 CON 8
        CPI R22,8
        ;Si no es igual a 10 continua Regresa a Ciclo
        BRNE CicloWrite
        
        SBI PORTB,5
        CBI PORTB,5
   #endasm
}
#pragma warn-


void Configura165()
{
   DDRB.2=1;
   DDRB.1=1;
}

#pragma warn-
unsigned char Read165(void)
{
   #asm   
    .equ PINB=3 
        ;Borra R23
        CLR R23
        ;Borra R23
        CLR R30
        SBI PORTB,1
   
    CicloRead: 
        ;shifteo a la izquierda
        LSL R30
        LDI R31,0x01
        
        SBIC PINB,0
        OR R30,R31
        SBI PORTB,2 
        ;Compara PORTB CON 2
        CBI PORTB,2
        
        INC R23
        CPI R23,8
        BRNE CicloRead
        
        CBI PORTB,1
        
   #endasm
}
#pragma warn-

void main(void)
{
   unsigned char j;
   Configura595();
   Configura165();
   while (1)
   {
      j=Read165();
      Write595(j); 
   }
}