
#include <io.h>
#include <delay.h>

#define TxD PORTB.0
#define RxD PINB.1
#define Switch PINB.2

//void PUTCHAR (unsigned char dato)   //9600 bps
//{
//    unsigned char i;
//    TxD=0;
//    delay_us(102);         //retardo del bit=(1/Baud_Rate)-2useg
//    for (i=0;i<8;i++)
//    {
//        if ((dato&0x01)==0)
//            TxD=0;
//        else   
//            TxD=1;
//        dato=dato>>1;
//        delay_us(102);    //retardo del bit
//        
//    }             
//    TxD=1;
//    delay_us(102);        //retardo del bit
//}


#pragma warn-
void PUTCHAR (unsigned char dato)
{

    #asm
        .equ PORTB=0x18
        LD R22,Y    ;R22 = dato
        ;tu código
        CLR R21     ;R21 = i
        CBI PORTB,0 
        
        ;Primer Delay
        RCALL DelayBit
        //#asm
        Ciclo:
            SBRC R22,0
            SBI PORTB,0
            SBRS R22,0
            CBI PORTB,0

            LSR R22
            ;Segundo Delay
            RCALL DelayBit

            INC R21     ;Incrementa i 
            CPI R21, 8  ;compara i < 8
            BRNE Ciclo
            SBI PORTB,0 
            
            ;Tercer Delay
            RCALL DelayBit

        ;fin de tu código
        RJMP Fin 
        
    DelayBit:
      ;implementación del delay de acuerdo a tu Baud Rate 
      LDI R31,high(7219) ;1u   
      LDI R30,low(7219)  ;1u
    CicloDelay:
        LD R0,-Z           
        NOP                   
        NOP
        NOP
        NOP
        NOP             
        CPI R31,00            
        BRNE CicloDelay               
        RET
    Fin:      
    #endasm
}
#pragma warn+

void PRINTF(flash unsigned char Mensaje[])
{
    unsigned char k;
    k=0;
    do{
        PUTCHAR(Mensaje[k++]); 
    }while(Mensaje[k]!=0);
}


void main(void)
{
 PORTB.0=1;    //TxD Idle mode
 DDRB.0=1;     //salida TxD
 while (1)
 {
    PRINTF("Jose Manuel Neri Villeda A01706450\r");
    delay_ms(1000);
 }
}


