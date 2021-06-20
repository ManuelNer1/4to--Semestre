/*
 * practica.c
 *
 * Created: 28/04/2021 12:01:37 p. m.
 * Author: ManuelNeri
 */

#include <io.h>
#include <delay.h>
#include <stdio.h>

// Voltage Reference: AVCC pin
#define ADC_VREF_TYPE ((0<<REFS1) | (1<<REFS0) | (1<<ADLAR))

int DCEnt, lectura; 

// Read the 8 most significant bits
// of the AD conversion result
unsigned char read_adc(unsigned char adc_input)
{
ADMUX=(adc_input & 0x1f) | ADC_VREF_TYPE;
if (adc_input & 0x20) ADCSRB|=(1<<MUX5);
else ADCSRB&= ~(1<<MUX5);
// Delay needed for the stabilization of the ADC input voltage
delay_us(10);
// Start the AD conversion
ADCSRA|=(1<<ADSC);
// Wait for the AD conversion to complete
while ((ADCSRA & (1<<ADIF))==0);
ADCSRA|=(1<<ADIF);
return ADCH;
} 

void main(void)
{   
    CLKPR = 0x80; 
    CLKPR = 0x04;
    
    TCCR0A = 0x81;
    TCCR0B = 0x01;
       
    // USART initialization
    // Communication Parameters: 8 Data, 1 Stop, No Parity
    // USART Receiver: On
    // USART Transmitter: On
    // USART0 Mode: Asynchronous
    // USART Baud Rate: 9600 (Double Speed Mode)
    UCSR0A=(0<<RXC0) | (0<<TXC0) | (0<<UDRE0) | (0<<FE0) | (0<<DOR0) | (0<<UPE0) | (1<<U2X0) | (0<<MPCM0);
    UCSR0B=(0<<RXCIE0) | (0<<TXCIE0) | (0<<UDRIE0) | (1<<RXEN0) | (1<<TXEN0) | (0<<UCSZ02) | (0<<RXB80) | (0<<TXB80);
    UCSR0C=(0<<UMSEL01) | (0<<UMSEL00) | (0<<UPM01) | (0<<UPM00) | (0<<USBS0) | (1<<UCSZ01) | (1<<UCSZ00) | (0<<UCPOL0);
    UBRR0H=0x00;
    UBRR0L=0x0C; 
    
    // ADC initialization
    // ADC Clock frequency: 500.000 kHz
    // ADC Voltage Reference: AVCC pin
    // ADC Auto Trigger Source: ADC Stopped
    // Only the 8 most significant bits of
    // the AD conversion result are used
    // Digital input buffers on ADC0: Off, ADC1: On, ADC2: On, ADC3: On
    // ADC4: On, ADC5: On, ADC6: On, ADC7: On
    DIDR0=(0<<ADC7D) | (0<<ADC6D) | (0<<ADC5D) | (0<<ADC4D) | (0<<ADC3D) | (0<<ADC2D) | (0<<ADC1D) | (1<<ADC0D);
    // Digital input buffers on ADC8: On, ADC9: On, ADC10: On, ADC11: On
    // ADC12: On, ADC13: On, ADC14: On, ADC15: On
    DIDR2=(0<<ADC15D) | (0<<ADC14D) | (0<<ADC13D) | (0<<ADC12D) | (0<<ADC11D) | (0<<ADC10D) | (0<<ADC9D) | (0<<ADC8D);
    ADMUX=ADC_VREF_TYPE;
    ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (1<<ADPS2) | (0<<ADPS1) | (0<<ADPS0);
    ADCSRB=(0<<MUX5) | (0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);
  
    printf("Porcentaje :\r");    

    while (1)
    {
        lectura = read_adc(0);
        DCEnt = (lectura*100)/255;
        printf("es %i",DCEnt); 
        printf("%c",37);
        printf("\r");
        delay_ms(100);            
    }
    
}
