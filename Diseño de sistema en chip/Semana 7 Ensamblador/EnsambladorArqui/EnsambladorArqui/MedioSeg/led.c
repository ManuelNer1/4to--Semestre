#include <io.h>

void main()
{
    #asm 
     
    .equ DDRB=4
    .equ PORTB=5
    
Inicio:
    SBI DDRB,0        ;configurando PB0 de salida
Ciclo:
    SBI PORTB,0        ;PB0=1  (Prende Led)
    RCALL DelayMedioSeg
    CBI PORTB,0        ;PB0=0  (Apaga Led)
    RCALL DelayMedioSeg
    RJMP Ciclo

DelayMedioSeg:
    LDI R31,high(????)   
    LDI R30,low(?????)    
CicloDelay:
    LD R0,-Z            ;2u
    NOP                    ;1u
    ;Poner más NOPs
    CPI R31,00            ;1u
    BRNE CicloDelay        ;2u (si brinca) 1u (no brinca)
    CPI R30,00            ;1u
    BRNE CicloDelay		;2u (si brinca) 1u (no brinca)
	RET					;4u
    
    #endasm
}