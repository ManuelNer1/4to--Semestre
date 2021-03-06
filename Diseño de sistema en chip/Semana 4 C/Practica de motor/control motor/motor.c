/*
 * motor.c
 *
 * Created: 22/04/2021 09:25:37 a. m.
 * Author: ManuelNeri
 */

   #asm
    .equ __lcd_port=0x02
    .equ __lcd_EN=1
    .equ __lcd_RS=0
    .equ __lcd_D4=2
    .equ __lcd_D5=3
    .equ __lcd_D6=4
    .equ __lcd_D7=5
   #endasm

#include <mega2560.h>
#include <delay.h>
#include <display.h>
#include <stdio.h> 

#define IN1 PORTB.6
#define IN2 PORTB.5

// Voltage Reference: AVCC pin
#define ADC_VREF_TYPE ((0<<REFS1) | (1<<REFS0) | (1<<ADLAR))

unsigned char DCEnt;
char Val[3];

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
    
    SetupLCD();   
          
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

    
    DDRB = 0xE0;        //PB5, PB6 y PB7 de salida
    PORTC.0 = 1;        //PC0 en pull-up
    TCCR0A = 0x81;
    TCCR0B = 0x01;
      
    while (1)
    {
      DCEnt = (OCR0A*100)/255;

      sprintf(Val,"%u", DCEnt);
      MoveCursor(4,1); 
      StringLCDVar(Val);
      StringLCD("%");
   
     
      
      if (PINC.0 == 1)
      {
            IN1 = 0;
            IN2 = 1;
            MoveCursor(0,0);
            StringLCD("CounterWise");     
      }
      else
      {
            IN1 = 1;
            IN2 = 0;
            MoveCursor(0,0);
            StringLCD("ClockWise  ");
      }
      OCR0A = read_adc(0);
    }
}

