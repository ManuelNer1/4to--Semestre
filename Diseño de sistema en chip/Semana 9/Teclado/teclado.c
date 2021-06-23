/*
 * teclado.c
 *
 * Created: 27/05/2021 09:11:21 a. m.
 * Author: ManuelNeri
 */
#asm
    .equ __lcd_port=0x02
    .equ __lcd_EN = 1
    .equ __lcd_RS = 0 
    .equ __lcd_D4 = 2
    .equ __lcd_D5 = 3
    .equ __lcd_D6 = 4
    .equ __lcd_D7 = 5
#endasm
   
#asm
    .equ __keypad_port = 0x08
    .equ __keypad_R1 = 3
    .equ __keypad_R2 = 2
    .equ __keypad_R3 = 1
    .equ __keypad_R4 = 0
    .equ __keypad_C1 = 4
    .equ __keypad_C2 = 5
    .equ __keypad_C3 = 6
#endasm

#include <io.h>
#include <display.h>
#include <delay.h>


float Nota=400.0;

void tono (float frec)
{
    float Cuentas;
    unsigned int CuentasEnt; 
    DDRB.5=1; //Salida Bocina 
    Cuentas=500000.0/frec;
    CuentasEnt=Cuentas;
    if ((Cuentas-CuentasEnt)>=0.5)
        CuentasEnt++;
    TCCR1A=0x40;   //Modo de CTC
    TCCR1B=0x09;   //Sin pre-escalador(CK)
    OCR1AH=(CuentasEnt-1)/256;
    OCR1AL=(CuentasEnt-1)%256;
}

void noTono()
{
    TCCR1A=0;
    TCCR1B=0;
}

void SetupKeypad(){
    #asm
        SBI __keypad_port-1, __keypad_R1  //R1 de salida;
        SBI __keypad_port-1, __keypad_R2  //R2 de salida;
        SBI __keypad_port-1, __keypad_R3  //R3 de salida;
        SBI __keypad_port-1, __keypad_R4  //R4 de salida;
        
        SBI __keypad_port, __keypad_C1  // Pull-up en C1
        SBI __keypad_port, __keypad_C2  // Pull-up en C2
        SBI __keypad_port, __keypad_C3  // Pull-up en C3
    #endasm
}

#pragma warn-
char ReadKeypad(){
    #asm

    Inicio:
        SBIS __keypad_port-2,__keypad_C1
        RJMP BarridoC1
        SBIS __keypad_port-2,__keypad_C2
        RJMP BarridoC2
        SBIS __keypad_port-2,__keypad_C3
        RJMP BarridoC3
        CLR R30
        RJMP Fin
    
    BarridoC1:
        LDI R30, '1'
        SBI __keypad_port,__keypad_R2   ;R2=1
        SBI __keypad_port,__keypad_R3   ;R3=1
        SBI __keypad_port,__keypad_R4   ;R4=1 
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C1 
        RJMP Fin 
        LDI R30, '4'
        SBI __keypad_port,__keypad_R1   ;R1=1
        CBI __keypad_port,__keypad_R2   ;R2=0
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C1 
        RJMP Fin 
        LDI R30, '7'
        SBI __keypad_port,__keypad_R2   ;R2=1
        CBI __keypad_port,__keypad_R3   ;R3=0
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C1 
        RJMP Fin   
        LDI R30, '*'
        SBI __keypad_port,__keypad_R3   ;R3=1
        CBI __keypad_port,__keypad_R4   ;R4=0 
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C1
        RJMP Fin 
        CLR R30
        RJMP Fin
    
    BarridoC2:
        LDI R30, '2'
        SBI __keypad_port,__keypad_R2   ;R2=1
        SBI __keypad_port,__keypad_R3   ;R3=1
        SBI __keypad_port,__keypad_R4   ;R4=1
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C2 
        RJMP Fin 
        LDI R30, '5'
        SBI __keypad_port,__keypad_R1   ;R1=1
        CBI __keypad_port,__keypad_R2   ;R2=0
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C2 
        RJMP Fin 
        LDI R30, '8'
        SBI __keypad_port,__keypad_R2   ;R2=1
        CBI __keypad_port,__keypad_R3   ;R3=0 
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C2 
        RJMP Fin   
        LDI R30, '0'
        SBI __keypad_port,__keypad_R3   ;R3=1
        CBI __keypad_port,__keypad_R4   ;R4=0 
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C2  
        RJMP Fin
        CLR R30
        RJMP Fin 
        
    BarridoC3:
        LDI R30, '3'
        SBI __keypad_port,__keypad_R2   ;R2=1
        SBI __keypad_port,__keypad_R3   ;R3=1
        SBI __keypad_port,__keypad_R4   ;R4=1
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C3 
        RJMP Fin 
        LDI R30, '6'
        SBI __keypad_port,__keypad_R1   ;R1=1
        CBI __keypad_port,__keypad_R2   ;R2=0
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C3 
        RJMP Fin 
        LDI R30, '9'
        SBI __keypad_port,__keypad_R2   ;R2=1
        CBI __keypad_port,__keypad_R3   ;R3=0
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C3 
        RJMP Fin   
        LDI R30, '#'
        SBI __keypad_port,__keypad_R3   ;R3=1
        CBI __keypad_port,__keypad_R4   ;R4=0
        RCALL Delay1us
        SBIS __keypad_port-2,__keypad_C3  
        RJMP Fin
        CLR R30
        RJMP Fin 
    
    Delay1us:
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RET
    
    Fin:
        CBI __keypad_port,__keypad_R1
        CBI __keypad_port,__keypad_R2
        CBI __keypad_port,__keypad_R3
        CBI __keypad_port,__keypad_R4      
    #endasm
}
#pragma warn+

char c;

void main(void){
    SetupLCD();
    SetupKeypad();
    
    while (1){
       do{
           c=ReadKeypad();
           tono(400.00);
       }while(c==0);
       
       MoveCursor(0,0);
       CharLCD(c);
    }
}