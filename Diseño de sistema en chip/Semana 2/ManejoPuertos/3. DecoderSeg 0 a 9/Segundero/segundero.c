/*
 * segundero.c
 *
 * Created: 12/04/2021 02:18:16 p. m.
 * Author: nerij
 */

#include <mega2560.h>
#include <delay.h>

//Aqui tengo en hexadecimal los bits necesarios para prender el display 
//es decir 1 en el display de 7 segmentos 0110 000b y 60h

unsigned char SieteSeg[16]={0xFC, 0x60, 0xDB, 0xF3, 0x66,
                            0xB7, 0xBE, 0XE1, 0xFE, 0xF6};
                            
unsigned char seg = 0;

void main(void)
{
    //Creo un pull-up mis entradas de PC0 a PC3

    PORTC = 0x0F;
    
    //Salidas en PD0 a PD7 
    
    DDRA = 0xFF; 
    
    while (1)
    {        
        /* Como salida de mi puerto D es dependiento de la entrada
        es decir si tengo un 3, tomara la posicion 3 de mi vector
        para desplegarla en el display de 7 segmentos   */    
        
        PORTA = SieteSeg[seg];
        
        //Si mi valor del puerto PC0 != 0 no va a contar      
        if (PINC.0 == 0)
            //se le suma a seg 1
            seg++; 
             
        //Si Seg = 10 se reiniciara seg a 0 
        if (seg == 10)
            seg = 0;
        delay_ms(1000);
    }
}