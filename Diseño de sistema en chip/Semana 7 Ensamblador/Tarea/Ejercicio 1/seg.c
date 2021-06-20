/*
 * seg.c
 *
 * Created: 21/05/2021 09:19:25 a. m.
 * Author: ManuelNeri
 */

    #include <io.h>
    
void main()
{
    #asm 
    .EQU DDRD=0x0A
    .EQU PORTC=8
    .EQU PINC=6
    .EQU PORTD=0x0B  
      
    Inicio:
        LDI R16,0xFF
        OUT DDRD,R16            ;Salida en PDO A PD7
        LDI R16,0x30
        OUT PORTC,R16           ;Pull-ups en PC4 y PC5
        CLR R17                 ;Seg
        CLR R1
    Ciclo:
        LDI R31,high(Tabla*2)
        LDI R30,low(Tabla*2)    ;Z apunta al primer elemento de la tabla (dir de 8 bits)
    
        ADD R30,R17
        ADC R31,R1
        LPM                     ;Leer tabla (z en 8 bits) -> R0
        OUT PORTD, R0
        RCALL Delay1Seg 
    
    Espera:
        SBIC PINC,5             ;PC5 esta en 1 ejecutara tambien la instruccion de abajo
        RJMP Espera             ;Este salto me permite no continuar con el programa

        SBIC PINC,4             ;PC4 esta en 1 ejecutara tambien la instruccion de abajo
        RJMP Resta              ;Este salto me permite cambiar a resta
        
        INC R17                 ; INC = R17 + 1
        CPI R17,10              ;Compara R17 CON 10
        BRNE Ciclo              ;Si no es igual a 10 continua Regresa a Ciclo
        CLR R17                 ;Al llegar a 10 mi R17 este se limpiara
        RJMP Ciclo              ;Salta a Ciclo
    
    Resta: 
        CPI R17,0               ;Compara R17 con 0
        BREQ Ceros              ;Si R17 es igual a Cero Salta a Ceros, para cargar 10 a R17
        DEC R17                 ;Decrementa R17
        RJMP Ciclo              ;Salta a Ciclo
        
    Ceros:
        LDI R17,10              ;Carga 10 a R17
        RJMP Resta              ;Salta a Resta
        
    Delay1Seg:
        LDI R31,high(49948)
        LDI R30,low(49948)
    CicloDelay:
        LD R0,-z 
        NOP
        NOP
        NOP
        NOP
        NOP
        CPI R31, 00         ;1u
        BRNE CicloDelay     ;2u (si brinca) 1u (no brinca)
        CPI R30, 00         ;1u         
        BRNE CicloDelay     ;2u (si brinca) 1u (no brinca)
        RET                 ;4u
                       
    Tabla:
        .db 0xFC,0x60,0xDB,0xF3,0x66,0xB7,0xBE,0xE1,0xFE,0xF6
#endasm  
}
