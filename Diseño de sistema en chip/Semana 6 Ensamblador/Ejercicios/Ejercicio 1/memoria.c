/*
 * memoria.c
 *
 * Created: 15/05/2021 12:11:02 p. m.
 * Author: ManuelNeri
 */

#include <io.h>

void main(void)
{
    // Hacer un programa que llene las primeras 255 localidades de memoria con un 55h
    #asm
        LDI R16, 0x55
        LDI R31, 0x01
        LDI R30, 0x00   ;z = 0x0100
    Ciclo:
        ST Z+,R16
        CPI R31, 0x02
        BRNE Ciclo   
    Fin:
        RJMP Fin        
    #endasm
}
