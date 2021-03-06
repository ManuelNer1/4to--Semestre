/*
 * memoria.c
 *
 * Created: 15/05/2021 12:35:05 p. m.
 * Author: ManuelNeri
 */

#include <io.h>

void main(void)
{
    //Hacer un programa que llene las primeras 512 localidades de memoria con numeros consecutivos
    // iniciando en 0 y repetir  el programa para hacerlo en forma descendente  
    
//    #asm
//        LDI R16, 0x00
//        LDI R31, 0x01
//        LDI R30, 0x00 
//    Ciclo:
//        ST Z+, R16
//        INC R16
//        CPI R31, 0x03
//        BRNE Ciclo
//    Fin:
//        RJMP Fin
//    #endasm 
     
    
    //Forma descendente  
    #asm
        LDI R16, 0xFF
        LDI R31, 0x03
        LDI R30, 0x00 
    Ciclo:
        ST -Z, R16
        DEC R16
        CPI R30, 0x00
        BRNE Ciclo
        CPI R31, 0x01
        BRNE Ciclo
        
        BRNE Ciclo
    Fin:
        RJMP Fin
    #endasm 
}
