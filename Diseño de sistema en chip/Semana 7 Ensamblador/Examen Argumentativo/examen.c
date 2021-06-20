/*
 * examen.c
 *
 * Created: 17/05/2021 10:49:32 a. m.
 * Author: ManuelNeri
 */

#include <io.h>
#include <delay.h>
#include <stdio.h>

// Declare your global variables here
int Val;
unsigned char SieteSeg[16]={0xFC, 0x60, 0xDB, 0xF3,
                            0x66, 0xB7, 0xBE, 0XE1,
                            0xFE, 0xF6, 0xEE, 0x3F,
                            0x9C, 0x7B, 0x9E, 0x8E};


// Voltage Reference: AVCC pin
#define ADC_VREF_TYPE ((0<<REFS1) | (1<<REFS0) | (0<<ADLAR))

// Read the AD conversion result
unsigned int read_adc(unsigned char adc_input)
{
ADMUX=adc_input | ADC_VREF_TYPE;
// Delay needed for the stabilization of the ADC input voltage
delay_us(10);
// Start the AD conversion
ADCSRA|=(1<<ADSC);
// Wait for the AD conversion to complete
while ((ADCSRA & (1<<ADIF))==0);
ADCSRA|=(1<<ADIF);
return ADCW;
}

void main(void)
{

// ADC initialization
// ADC Clock frequency: 125.000 kHz
// ADC Voltage Reference: AVCC pin
// ADC Auto Trigger Source: ADC Stopped
// Digital input buffers on ADC0: On, ADC1: Off, ADC2: On, ADC3: On
// ADC4: On, ADC5: On
DIDR0=(0<<ADC5D) | (0<<ADC4D) | (0<<ADC3D) | (0<<ADC2D) | (1<<ADC1D) | (0<<ADC0D);
ADMUX=ADC_VREF_TYPE;
ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (1<<ADPS2) | (1<<ADPS1) | (0<<ADPS0);
ADCSRB=(0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);

// USART initialization
// Communication Parameters: 8 Data, 1 Stop, No Parity
// USART Receiver: On
// USART Transmitter: On
// USART0 Mode: Asynchronous
// USART Baud Rate: 1200
UCSR0A=(0<<RXC0) | (0<<TXC0) | (0<<UDRE0) | (0<<FE0) | (0<<DOR0) | (0<<UPE0) | (0<<U2X0) | (0<<MPCM0);
UCSR0B=(0<<RXCIE0) | (0<<TXCIE0) | (0<<UDRIE0) | (1<<RXEN0) | (1<<TXEN0) | (0<<UCSZ02) | (0<<RXB80) | (0<<TXB80);
UCSR0C=(0<<UMSEL01) | (0<<UMSEL00) | (0<<UPM01) | (0<<UPM00) | (0<<USBS0) | (1<<UCSZ01) | (1<<UCSZ00) | (0<<UCPOL0);
UBRR0H=0x01;
UBRR0L=0xA0; 
    
printf("Jose Manuel Neri Villeda A01706450\r");


DDRD.6 = 1;       
TCCR0A = 0x42;    
TCCR0B = 0x03;    
OCR0A = 1458;    

DDRC.5 = 1;
TCCR1A=0;
TCCR1B= 0x0B;
OCR1AH= 12499/256;          
OCR1AL= 12499%256;           
TIMSK1=0x02;                
#asm("SEI") 
PORTC.5=~PORTC.5;
      
while (1)
    { 
      //PARTE 2 
      DDRB = 0xFE;
      Val = read_adc(1);
      if (Val < 0.5)
        PORTB = SieteSeg[0];
      if ((Val >= 0.5)||(Val < 1.5))
        PORTB = SieteSeg[1];
      if ((Val >= 1.5)||(Val < 2.5))
        PORTB = SieteSeg[2];
      if ((Val >= 2.5)||(Val < 3.5))
        PORTB = SieteSeg[3];
      if ((Val >= 3.5)||(Val < 4.5))
        PORTB = SieteSeg[4];
      if (Val >= 4.5)
        PORTB = SieteSeg[5]; 
        
      

    }
}