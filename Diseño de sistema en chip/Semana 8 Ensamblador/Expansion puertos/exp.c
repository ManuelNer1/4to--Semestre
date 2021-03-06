/*
 * exp.c
 *
 * Created: 24/05/2021 10:05:10 a. m.
 * Author: ManuelNeri
 */

#include <io.h>
//595(escritura)
#define DATA_595 PORTB.4
#define STCLK_595 PORTB.5
#define SHCLK_595 PORTB.3
//165
#define CLK_165 PORTB.2
#define LOAD_165 PORTB.1
#define DATA_165 PINB.0

void Configura595()
{
   DDRB.3=1;
   DDRB.4=1;
   DDRB.5=1;
}

void Write595 (unsigned char dato)
{
   unsigned char i;
   for (i=0;i<8;i++)
   {
      if ((dato&0x80)==0)   //DATA_595=dato.7;
         DATA_595=0;
      else
         DATA_595=1;
         
      SHCLK_595=1;      //Shift clock
      SHCLK_595=0;
      dato=dato<<1; //Se recorre una posici?n
   }
   
   STCLK_595=1;     //storage clock
   STCLK_595=0;
}


void Configura165()
{
   DDRB.2=1;
   DDRB.1=1;
}

unsigned char Read165(void)
{
   unsigned char i,val=0;
   LOAD_165=1;    //Modo de shift
   for (i=0;i<8;i++)
   {
      val=val<<1;
      if (DATA_165==1)
         val=val|1;
      CLK_165=1;
      CLK_165=0;
   } 
   LOAD_165=0;
   return val;
   
   
   LOAD_165=0;   //Modo de Load
   return val;
}

void main(void)
{
   unsigned char j;
   Configura595();
   Configura165();
   while (1)
   {
      j=Read165();
      Write595(j); 
   }

}