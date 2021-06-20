/*
 * mem.c
 *
 * Created: 16/05/2021 09:42:41 a. m.
 * Author: ManuelNeri
 */

#include <io.h>

void main(void)
{
    #asm
    .equ DDRB = 4
    .equ PORTB = 5
    
Inicio:
    SBI DDRB, 0     ;Configurando PB0 de salida     //DDRB.0 = 1 
    
Ciclo:
    SBI PORTB, 0    ;PB0 = 1    (Prende el led)     //PORTB.0 = 1
    RCALL DelayMedioSeg
    CBI PORTB, 0    ;PB0 = 0    (Apaga el led)      //PORTB.0 = 0
    RCALL DelayMedioSeg ;3u
    RJMP Ciclo   
    
DelayMedioSeg:
    LDI R31, high(49935)     ;1u
    LDI R30, low(49935)      ;1u
    
CicloDelay:
    LD R0, -Z           ;2u
    NOP                 ;1u
    NOP
    NOP
    CPI R31, 00         ;1u
    BRNE CicloDelay     ;2u (si brinca) 1u (no brinca)
    CPI R30, 00         ;1u         
    BRNE CicloDelay     ;2u (si brinca) 1u (no brinca)
    RET                 ;4u
    
    #endasm
}
