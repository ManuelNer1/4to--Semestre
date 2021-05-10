/*
 * ALU.c
 *
 * Created: 07/04/2021 09:46:14 a. m.
 * Author: nerij
 */

#include <mega328p.h>

unisgned char op, A, B;

void main(void)
{

DDRD = 0x1F  //PD0 a PD4 de salida
while (1)
    {
     A = PINB&0x0F;
     B = PINB>>4;   
     op = PINC&0x07;
     
     switch (op)
     {
        case 0 :    //NOT
            PORTD = ~A;
            break;      
        case 1:     //AND
            PORTD = A&B;
            break;          
        case 2:     //NAND
            PORTD = ~(A&B); 
            break; 
        case 3:     //OR
            PORTD = A|B;
            break; 
        case 4:     //NOR
            PORTD = ~(A|B);
            break;
        case 5:     //XOR
            PORTD = A^B;
            break;
        case 6:     //XNOR
            PORTD = ~(A^B);
            break; 
        case 7:     //SUMA 
            PORTD = A+B;
            break;
     }
    }
}
