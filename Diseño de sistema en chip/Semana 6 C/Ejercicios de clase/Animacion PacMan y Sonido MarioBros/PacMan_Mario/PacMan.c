/*
 * PacMan.c
 *
 * Created: 13/04/2021 10:07:44 a. m.
 * Author: L00638437
 */

#asm
    .equ __lcd_port=0x0B
    .equ __lcd_EN=3
    .equ __lcd_RS=2
    .equ __lcd_D4=4
    .equ __lcd_D5=5
    .equ __lcd_D6=6
    .equ __lcd_D7=7
#endasm

#include <io.h>
#include <delay.h>
#include <display.h>
#include <stdio.h> 

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

void DelayPacman()
{
    delay_ms(read_adc(0));
}

unsigned char PacMan1[8]={0x0E,0x1D,0x1E,0x1C,0x1E,0x1F,0x0E,0x00};
unsigned char PacMan2[8]={0x0E,0x1D,0x1F,0x1E,0x1F,0x1F,0x0E,0x00};
unsigned char PacMan3[8]={0x0E,0x17,0x0F,0x07,0x0F,0x1F,0x0E,0x00};
unsigned char PacMan4[8]={0x0E,0x17,0x1F,0x0F,0x1F,0x1F,0x0E,0x00};

signed char i;  //rango de valores de -128 a +127

void main(void)
{
    // ADC initialization
    // ADC Clock frequency: 125.000 kHz
    // ADC Voltage Reference: AVCC pin
    // ADC Auto Trigger Source: ADC Stopped
    // Digital input buffers on ADC0: Off, ADC1: On, ADC2: On, ADC3: On
    // ADC4: On, ADC5: On
    DIDR0=(0<<ADC5D) | (0<<ADC4D) | (0<<ADC3D) | (0<<ADC2D) | (0<<ADC1D) | (1<<ADC0D);
    ADMUX=ADC_VREF_TYPE;
    ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (0<<ADPS2) | (1<<ADPS1) | (1<<ADPS0);
    ADCSRB=(0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);
    SetupLCD();
    CreateChar(0,PacMan1);  
    CreateChar(1,PacMan2);
    CreateChar(2,PacMan3);
    CreateChar(3,PacMan4);
    while (1)
    {
       MoveCursor(5,0);
       StringLCD("Hello");
       MoveCursor(3,1);
       StringLCD("Mr. PacMan");
       
       for (i=0;i<16;i++)
       {
          MoveCursor(i,0);   //Paso 1
          CharLCD(0);        //Paso 2
          DelayPacman();  
          MoveCursor(i,0);   //Paso 3
          CharLCD(1);        //Paso 4  
          DelayPacman(); 
          MoveCursor(i,0);   //Paso 5
          CharLCD(' ');      //Paso 6
       }  
       
       for (i=15;i>=0;i--)
       {
            MoveCursor(i,1);   //Paso 1
            CharLCD(2);        //Paso 2
            DelayPacman(); 
            MoveCursor(i,1);   //Paso 3
            CharLCD(3);        //Paso 4
            DelayPacman(); 
            MoveCursor(i,1);   //Paso 5
            CharLCD(' ');      //Paso 6
       }
    }
}
