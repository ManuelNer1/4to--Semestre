/*
 * papel.c
 *
 * Created: 14/04/2021 07:38:04 a. m.
 * Author: nerij
 */

   #asm
    .equ __lcd_port=0x05
    .equ __lcd_EN=1
    .equ __lcd_RS=0
    .equ __lcd_D4=2
    .equ __lcd_D5=3
    .equ __lcd_D6=4
    .equ __lcd_D7=5
   #endasm

#include <io.h>
#include <delay.h>
#include <display.h> 

// Constante numerica
#define SinTiro 0
#define Piedra 1
#define Papel 2
#define Tijeras 3

//variables
unsigned char A = 0, B = 0, TiroA, TiroB;

//Funciones
void ImprimeMarcador()
{
    //Usuario A
    MoveCursor(0,0);
    CharLCD(A + '0');   //Esto para imprimir el caracter 0 ASCII      
    
    //Usuario B
    MoveCursor(15,0);
    CharLCD(B + '0');
}

void ImprimeTiro()
{
    //Usuario A
    MoveCursor(0,1);
    switch  (TiroA)
    {
        case Piedra:
            StringLCD("Piedra ");
            break;
        case Papel:
            StringLCD("Papel  ");
            break;
        case Tijeras:
            StringLCD("Tijeras");
            break;
    }
    
    //Usuario B
    MoveCursor(9,1);
    switch  (TiroB)
    {
        case Piedra:
            StringLCD(" Piedra");
            break;
        case Papel:
            StringLCD("  Papel");
            break;
        case Tijeras:
            StringLCD("Tijeras");
            break;
    }
}

void main(void)
{
    SetupLCD();
    PORTD = 0xE1;  //Pull-ups en PD7, PD6, PD5 Y PD0
    PORTC = 0X07;  //Pull-ups en PC2, PC1 Y PC0
        
    while (1)
    {
        ImprimeMarcador();  
        //Dezplega mensaje de tirar
        MoveCursor(4,0);
        StringLCD("A TIRAR");  
        //Asigno un valor constante al Tiro A y B en 0
        TiroA = SinTiro;
        TiroB = SinTiro;
        
        do{ 
            //Usuario A
            if (PIND.5 == 0)
                TiroA = Piedra;
            if (PIND.6 == 0)
                TiroA = Papel;
            if (PIND.7 == 0)
                TiroA = Tijeras;
             
            //Usuario B
            if (PINC.0 == 0)
                TiroB = Piedra;
            if (PINC.1 == 0)
                TiroB = Papel;
            if (PINC.2 == 0)
                TiroB = Tijeras;  
             
            //Usuario A
            MoveCursor(0,1);
            if (TiroA == SinTiro)
                StringLCD("Falta  ");
            else 
                StringLCD("OK     ");
            
            //Usuario B    
            MoveCursor(9,1);
            if (TiroB == SinTiro)
                StringLCD("  Falta");
            else 
                StringLCD("     OK");
        }while((TiroA==SinTiro)||(TiroB==SinTiro));
        
        ImprimeTiro();
        MoveCursor(4,0);
        switch (TiroA - TiroB)
        {
               case 0:
                    StringLCD("EMPATE ");
                    break; 
               case 1:      
               case -2:
                    StringLCD("GANA A ");  
                    A++;
                    break;
               case -1:
               case 2:
                    StringLCD("Gana B ");
                    B++;
                    break;
                                       
        }
        
        ImprimeMarcador();
        delay_ms(1500);
        
        if ((A==5)||(B==5))
        {
            do{
                MoveCursor(4,0);
                if(A==5)
                    StringLCD("GANO A ");
                else
                    StringLCD("GANO B ");
                delay_ms(100);
                MoveCursor(4,0);
                StringLCD("        ");
                delay_ms(100);                               
            }while(PIND.0==1); 
            A = 0;
            B = 0;
        } 
    }
}
