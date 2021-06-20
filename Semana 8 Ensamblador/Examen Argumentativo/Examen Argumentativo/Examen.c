/*
 * Examen.c
 *
 * Created: 25/05/2021 04:32:41 p. m.
 * Author: ManuelNeri
 */

#include <io.h>
#include <stdio.h>
#include <delay.h>

char dato = 0;
float dataso = 0;
unsigned char SieteSeg[16]={0xFC, 0x60, 0xDB, 0xF3, 0x66,
                            0xB7, 0xBE, 0XE1, 0xFE, 0xF6};


//---------------------Parte 2------------------------------------------------------------------------------------
// Voltage Reference: AVCC pin
#define ADC_VREF_TYPE ((0<<REFS1) | (1<<REFS0) | (1<<ADLAR))

// Read the 8 most significant bits
// of the AD conversion result
unsigned char read_adc(unsigned char adc_input)
{
ADMUX=adc_input | ADC_VREF_TYPE;
// Delay needed for the stabilization of the ADC input voltage
delay_us(10);
// Start the AD conversion
ADCSRA|=(1<<ADSC);
// Wait for the AD conversion to complete
while ((ADCSRA & (1<<ADIF))==0);
ADCSRA|=(1<<ADIF);
return ADCH;
}

//----------------------Parte 5------------------------------------------------------------------------------------
interrupt [TIM1_COMPA] void timer1_compa_isr(void)
{
 PORTC.5=~PORTC.5;
}

void main(void)
{

DDRD=0x3C;
DDRB=0xFE;
DDRC.1 = 0;

//Frecuencia a 8Mhz
CLKPR = 0x80;     //Habilita cambio de frecuencia
CLKPR = 0;        //Micro a 8MHz

//---------------------Parte 1 Frecuencia a------------------------------------------------------------------------- 
PORTD.0 = 1;      //Pull-up en PD0
DDRD.6 = 1;       //Salida en PD6 (OC0A)
TCCR0A = 0x42;    //CTC
TCCR0B = 0x03;    //CK/64
OCR0A = 178;

//---------------------Parte 2-------------------------------------------------------------------------------------
// ADC initialization
// ADC Clock frequency: 500.000 kHz
// ADC Voltage Reference: AVCC pin
// ADC Auto Trigger Source: ADC Stopped
// Only the 8 most significant bits of
// the AD conversion result are used
// Digital input buffers on ADC0: On, ADC1: Off, ADC2: On, ADC3: On
// ADC4: On, ADC5: On
DIDR0=(0<<ADC5D) | (0<<ADC4D) | (0<<ADC3D) | (0<<ADC2D) | (1<<ADC1D) | (0<<ADC0D);
ADMUX=ADC_VREF_TYPE;
ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (0<<ADPS2) | (0<<ADPS1) | (1<<ADPS0);
ADCSRB=(0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);

//---------------------Parte 3-------------------------------------------------------------------------------------
// USART initialization
// Communication Parameters: 8 Data, 1 Stop, No Parity
// USART Receiver: On
// USART Transmitter: On
// USART0 Mode: Asynchronous
// USART Baud Rate: 1200 (Double Speed Mode)
UCSR0A=(0<<RXC0) | (0<<TXC0) | (0<<UDRE0) | (0<<FE0) | (0<<DOR0) | (0<<UPE0) | (0<<U2X0) | (0<<MPCM0);
UCSR0B=(0<<RXCIE0) | (0<<TXCIE0) | (0<<UDRIE0) | (1<<RXEN0) | (1<<TXEN0) | (0<<UCSZ02) | (0<<RXB80) | (0<<TXB80);
UCSR0C=(0<<UMSEL01) | (0<<UMSEL00) | (0<<UPM01) | (0<<UPM00) | (0<<USBS0) | (1<<UCSZ01) | (1<<UCSZ00) | (0<<UCPOL0);
UBRR0H=0x01;
UBRR0L=0xA0; 
printf("Jose Manuel Neri Villeda A01706450\r");

//--------------------Parte 5-------------------------------------------------------------------------------------
TCCR1A = 0x00;TCCR1B = 0x0B;OCR1AH=12499/256;OCR1AL=12449%256;TIMSK1=0x02;#asm("SEI");     DDRC.5=1;

while (1)
{
    dataso = read_adc(1);
    dataso = dataso/51.0;
     
    if(dataso<0.5) 
        PORTB = SieteSeg[0];
    if((dataso>=0.5)&&(dataso<1.5))
        PORTB = SieteSeg[1];
    if((dataso>=1.5)&&(dataso<2.5))
        PORTB = SieteSeg[2];
    if((dataso>=2.5)&&(dataso<3.5))
        PORTB = SieteSeg[3];
    if((dataso>=3.5)&&(dataso<4.5))
        PORTB = SieteSeg[4];
    if(dataso>=4.5)
        PORTB = SieteSeg[5];    
    
      
//----------------------Parte 4-----------------------------------------------------------------------------------
    if ((UCSR0A&0x80)!=0) //Instrucción que nos dice si hay un caracter listo
    // para leerse (bandera “receive complete”)
    {
        dato=getchar(); //Lee caracter del Puerto serie
        // Código para procesar el caracter recibido  
        if(dato=='1'){            PORTD.5 = ~PORTD.5;}
        if(dato=='2'){
            PORTD.4 = ~PORTD.4;}
        if(dato=='3'){
            PORTD.3 = ~PORTD.3;}
        if(dato=='4'){
            PORTD.2 = ~PORTD.2;} 
      }
    }   
}
