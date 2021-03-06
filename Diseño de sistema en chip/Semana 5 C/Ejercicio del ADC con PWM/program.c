/*
 * program.c
 *
 * Created: 30/04/2021 02:00:35 p. m.
 * Author: ManuelNeri
 */
#include <io.h>
#include <delay.h>

// Declare your global variables here

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

void main(void)
{    
    DDRB = 0x0E;    //Salidas en PB1, PB2, y PB3
    DDRD = 0x68;    //Salidas en PD3, PD5 y PD6
    TCCR0A = 0xA1;  //Timer 0 en Phase Correct PWM (8-bits)
    TCCR0B = 1;     //Timer 0 sin Pre-escalador
    TCCR1A = 0xA1;  //Timer 1 en Phase Correct PWM (8-bits)
    TCCR1B = 1;     //Timer 1 sin Pre-escalador
    TCCR2A = 0xA1;  //Timer 2 en Phase Correct PWM (8-bits)
    TCCR2B = 1;     //Timer 2 sin Pre-escalador 
    
    // ADC initialization
// ADC Clock frequency: 500.000 kHz
// ADC Voltage Reference: AVCC pin
// ADC Auto Trigger Source: ADC Stopped
// Only the 8 most significant bits of
// the AD conversion result are used
// Digital input buffers on ADC0: Off, ADC1: Off, ADC2: Off, ADC3: Off
// ADC4: Off, ADC5: Off
DIDR0=(1<<ADC5D) | (1<<ADC4D) | (1<<ADC3D) | (1<<ADC2D) | (1<<ADC1D) | (1<<ADC0D);
ADMUX=ADC_VREF_TYPE;
ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (0<<ADPS2) | (0<<ADPS1) | (1<<ADPS0);
ADCSRB=(0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);

// SPI initialization
// SPI disabled
SPCR=(0<<SPIE) | (0<<SPE) | (0<<DORD) | (0<<MSTR) | (0<<CPOL) | (0<<CPHA) | (0<<SPR1) | (0<<SPR0);

// TWI initialization
// TWI disabled
TWCR=(0<<TWEA) | (0<<TWSTA) | (0<<TWSTO) | (0<<TWEN) | (0<<TWIE);

    while (1)
    {
        OCR0A = read_adc(0);
        OCR0B = read_adc(1);
        OCR1AH = 0;
        OCR1AL = read_adc(2);
        OCR1BH = 0;
        OCR1BL = read_adc(3);
        OCR2A = read_adc(4);
        OCR2B = read_adc(5);
    }
}
