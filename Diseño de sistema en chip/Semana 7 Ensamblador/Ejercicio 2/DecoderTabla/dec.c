/*
 * dec.c
 *
 * Created: 17/05/2021 09:46:02 a. m.
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
        OUT DDRD,R16    ;Salida en PDO A PD7
        LDI R16,0x0F
        OUT PORTC,R16   ;Pull-ups en PC0 A PC3
        CLR R1
    Ciclo:
        LDI R31,high(Tabla*2)
        LDI R30,low(Tabla*2)    ;Z apunta al primer elemento de la tabla (dir de 8 bits)
        IN R17,PINC
        ANDI R17,0x0F
        ADD R30,R17
        ADC R31,R1
        LPM                     ;Leer tabla (z en 8 bits) -> R0
        OUT PORTD, R0
        RJMP Ciclo                

    Tabla:
        .db 0xFC,0x60,0xDB,0xF3,0x66,0xB7,0xBE,0xE1,0xFE,0xF6,0xEE,0x3F,0x9C,0x7B,0x9E,0x8E
#endasm
}

