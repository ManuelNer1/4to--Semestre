#include <mega328P.h>  
    #include <delay.h>
    #include <stdio.h> 
    
#define Dig1 PORTD.1
#define Dig2 PORTD.0

#define RojoP PORTD.3
#define VerdeP PORTD.4
#define RojoC PORTD.5
#define AmbarC PORTD.6
#define VerdeC PORTD.7

unsigned char segundos=0;
bit SelDigito=0;
bit peaton=0;    

// External Interrupt 0 service routine
interrupt [EXT_INT0] void ext_int0_isr(void)
{
   peaton=1;
}

// Timer 0 output compare A interrupt service routine
interrupt [TIM0_COMPA] void despliega(void)
{
   //Tabla para C?todo Com?n segmento "a" LSB
   unsigned char SieteSeg[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};        
   unsigned char decenas, unidades;
   SelDigito=~SelDigito;
   if (SelDigito==1)
   {
      Dig1=1;
      Dig2=1;
      decenas=segundos/10;
      PORTC=SieteSeg[decenas];
      Dig1=0;   
   }         
   else
   {
      Dig1=1;
      Dig2=1;
      unidades=segundos%10;
      PORTC=SieteSeg[unidades];
      Dig2=0; 
   }
   
}



void main(void)
{
    unsigned char i;
    DDRD = 0b11111011;
    PORTD.2 = 1;
    DDRC = 0xFF;
    
    TCCR0A = 0X02;
    TCCR0B = 0X03;
    OCR0A = 77; 
    TIMSK0 = 0x02;           
      
    // External Interrupt(s) initialization
    // INT0: On
    // INT0 Mode: Falling Edge
    // INT1: Off
    // Interrupt on any change on pins PCINT0-7: Off
    // Interrupt on any change on pins PCINT8-14: Off
    // Interrupt on any change on pins PCINT16-23: Off
    EICRA=(0<<ISC11) | (0<<ISC10) | (1<<ISC01) | (0<<ISC00);
    EIMSK=(0<<INT1) | (1<<INT0);
    EIFR=(0<<INTF1) | (1<<INTF0);
    PCICR=(0<<PCIE2) | (0<<PCIE1) | (0<<PCIE0); 
    
    #asm("SEI") 
    
    DDRB.1 = 1;     //PB1 de salida (bocina)
    TCCR1A = 0x40;;
    //tccr1b = 0x09;
    OCR1AH = 1135/256;
    OCR1AL = 1135%256;

    while (1)
    {  
        RojoP = 1;
        VerdeP = 0;
        VerdeC = 1;
        AmbarC = 0;
        RojoC = 0;
        while(!peaton);
        
        VerdeC = 0;
        AmbarC = 1;
        delay_ms(2000);
        
        AmbarC = 0;
        RojoC = 1;
        RojoP = 0;
        VerdeP = 1;
        
        segundos = 20;
        
        for(i=1;i<=20;i++)
        {
            segundos--;
            TCCR1B = 0x09;
            delay_ms(250);  
            TCCR1B = 0x00;
            delay_ms(750);
        } 
        
        peaton = 0;
        
        VerdeP = 0;
        RojoP = 1;
        RojoC= 0;
        VerdeC = 1;
        delay_ms(20000);    
              
    }
}

