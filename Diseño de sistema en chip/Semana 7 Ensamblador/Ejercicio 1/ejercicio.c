/*
 * ejercicio.c
 *
 * Created: 17/05/2021 09:19:51 a. m.
 * Author: ManuelNeri
 */

#include <io.h>

void main(void)
{
#asm
    .EQU DDRD = 0x0A
    .EQU PORTC = 8
    .EQU PINC = 6
    .EQU PORTD = 0x0B
    
    Inicio:
        LDI R16,0xFF
        OUT DDRD,R16
        LDI R16,0x0F
        OUT PORTC,R16
        CLR R16
    Ciclo:
        OUT PORTD,R16
        IN R17,PINC
        ANDI R17,0x0F
        CPI R17,0
        BREQ Es0
        CPI R17,1
        BREQ Es1
        CPI R17,2
        BREQ Es2
        CPI R17,3
        BREQ Es3
        CPI R17,4
        BREQ Es4
        CPI R17,5
        BREQ Es5
        CPI R17,6
        BREQ Es6
        CPI R17,7
        BREQ Es7
        CPI R17,8
        BREQ Es8
        CPI R17,9
        BREQ Es9
        CPI R17,0x0A
        BREQ EsA
        CPI R17,0x0B
        BREQ EsB
        CPI R17,0x0C
        BREQ EsC
        CPI R17,0x0D
        BREQ EsD
        CPI R17,0x0E
        BREQ EsE
    EsF:
        LDI R16, 0x8E
        RJMP Ciclo
    Es0:
        LDI R16, 0xFC
        RJMP Ciclo
    Es1:
        LDI R16, 0x60
        RJMP Ciclo
    Es2:
        LDI R16, 0xDB
        RJMP Ciclo
    Es3:
        LDI R16, 0xF3
        RJMP Ciclo
    Es4:
        LDI R16, 0x66
        RJMP Ciclo
    Es5:
        LDI R16, 0xB7
        RJMP Ciclo
    Es6:
        LDI R16, 0xBE
        RJMP Ciclo
    Es7:
        LDI R16, 0xE1
        RJMP Ciclo
    Es8:
        LDI R16, 0xFE
        RJMP Ciclo
    Es9:
        LDI R16, 0xF6
        RJMP Ciclo
    EsA:
        LDI R16, 0xEE
        RJMP Ciclo
    EsB:
        LDI R16, 0x3F
        RJMP Ciclo
    EsC:
        LDI R16, 0x9C
        RJMP Ciclo
    EsD:
        LDI R16, 0x7B
        RJMP Ciclo
    EsE:
        LDI R16, 0x9E
        RJMP Ciclo
#endasm
}
