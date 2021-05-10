/*
 * DecoderSegundero.c
 *
 * Created: 12/04/2021 01:29:04 p. m.
 * Author: nerij
 */

#include <mega2560.h>

//Aqui tengo en hexadecimal los bits necesarios para prender el display 
//es decir 1 en el display de 7 segmentos 0110 000b y 60h

unsigned char SieteSeg[16]={0xFC, 0x60, 0xDB, 0xF3,
                            0x66, 0xB7, 0xBE, 0XE1,
                            0xFE, 0xF6, 0xEE, 0x3F,
                            0x9C, 0x7B, 0x9E, 0x8E};
                            
unsigned char dato;

void main(void)
{
    //Creo un pull-up mis entradas 
    //Opcion 1
    /*        
                PORTC.0 = 1;
                PORTC.1 = 1;
                PORTC.2 = 1;
                PORTC.3 = 1;  
    */ 
    //Opcion 2
    PORTC = 0x0F;
    
    //Salidas en PD0 a PD7
    DDRA = 0xFF; 
    
    while (1)
    {    
        //Aplico la mascara para solo tener mis 4 bits mas sig
        dato = PINC&0x0F;     
        
        /* Como salida de mi puerto D es dependiento de la entrada
        es decir si tengo un 3, tomara la posicion 3 de mi vector
        para desplegarla en el display de 7 segmentos   */
        PORTA = SieteSeg[dato];
    }
}
