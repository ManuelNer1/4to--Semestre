/*
 * dec.c
 *
 * Created: 21/05/2021 02:08:09 p. m.
 * Author: ManuelNeri
 */

#include <io.h>

void main(void)
{
#asm
    .EQU PINB = 3
    .EQU PORTB = 5
    .EQU PINC = 6
    .EQU PORTC = 8
    .EQU DDRD = 0x0A 
    .EQU PORTD = 0x0B
    
    Inicio:
        LDI R16,0xFF
        OUT DDRD,R16    ;Salida en PDO A PD7
        LDI R16,0x21
        OUT PORTC,R16   ;Pull-up en PC0 y PC5
        LDI R16,0xFF
        OUT PORTB,R16   ;Pull-ups en PB0 A PB7 
        
    Ciclo:
        OUT PORTD,R16
        IN R17,PINC 
        IN R16,PINB 
        CLR R18
        
        SBIC PINC,5
        RJMP EsCero
        
        SBIC PINC,0
        INC R18
        SBIC PINB,7
        INC R18 
        SBIC PINB,6
        INC R18 
        SBIC PINB,5 
        INC R18 
        SBIC PINB,4
        INC R18 
        SBIC PINB,3
        INC R18
        SBIC PINB,2
        INC R18    
        SBIC PINB,1
        INC R18    
        SBIC PINB,0
        INC R18 
                         
        CPI R18,0
        BREQ EsCero
        CPI R18,1
        BREQ EsUno
        CPI R18,2
        BREQ EsDos
        CPI R18,3
        BREQ EsTres
        CPI R18,4
        BREQ EsCuatro
        CPI R18,5
        BREQ EsCinco
        CPI R18,6
        BREQ EsSeis
        CPI R18,7
        BREQ EsSiete
        CPI R18,8
        BREQ EsOcho
        CPI R18,9
        BREQ EsNueve
    EsCero:
        LDI R16,0xFC
        RJMP Ciclo
    EsUno:
        LDI R16,0x60
        RJMP Ciclo
    EsDos:
        LDI R16,0xDB
        RJMP Ciclo
    EsTres:
        LDI R16,0xF3
        RJMP Ciclo
    EsCuatro:
        LDI R16,0x66
        RJMP Ciclo
    EsCinco:
        LDI R16,0xB7
        RJMP Ciclo
    EsSeis: 
        LDI R16,0xBE
        RJMP Ciclo
    EsSiete:
        LDI R16,0xE1
        RJMP Ciclo
    EsOcho: 
        LDI R16,0xFE
        RJMP Ciclo
    EsNueve:
        LDI R16,0xF6
        RJMP Ciclo       
#endasm
}
