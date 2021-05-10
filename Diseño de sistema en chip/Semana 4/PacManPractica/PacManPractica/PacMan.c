/*
 * PacMan.c
 *
 * Created: 13/04/2021 10:07:44 a. m.
 * Author: L00638437
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

#include <io.h>
#include <delay.h>
#include <display.h>
#include <stdio.h> 

// Voltage Reference: AVCC pin
#define ADC_VREF_TYPE ((0<<REFS1) | (1<<REFS0) | (0<<ADLAR))

// Read the AD conversion result
unsigned int read_adc(unsigned char adc_input)
{
ADMUX=(adc_input & 0x1f) | ADC_VREF_TYPE;
if (adc_input & 0x20) ADCSRB|=(1<<MUX5);
else ADCSRB&=~(1<<MUX5);
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
unsigned char r;

void main(void)
{
    // ADC initialization
    // ADC Clock frequency: 125.000 kHz
    // ADC Voltage Reference: AVCC pin
    // ADC Auto Trigger Source: ADC Stopped
    // Digital input buffers on ADC0: Off, ADC1: On, ADC2: On, ADC3: On
    // ADC4: On, ADC5: On, ADC6: On, ADC7: On
    DIDR0=(0<<ADC7D) | (0<<ADC6D) | (0<<ADC5D) | (0<<ADC4D) | (0<<ADC3D) | (0<<ADC2D) | (0<<ADC1D) | (1<<ADC0D);
    // Digital input buffers on ADC8: On, ADC9: On, ADC10: On, ADC11: On
    // ADC12: On, ADC13: On, ADC14: On, ADC15: On
    DIDR2=(0<<ADC15D) | (0<<ADC14D) | (0<<ADC13D) | (0<<ADC12D) | (0<<ADC11D) | (0<<ADC10D) | (0<<ADC9D) | (0<<ADC8D);
    ADMUX=ADC_VREF_TYPE;
    ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (1<<ADPS2) | (1<<ADPS1) | (1<<ADPS0);
    ADCSRB=(0<<MUX5) | (0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);    

    SetupLCD();
    CreateChar(0,PacMan1);  
    CreateChar(1,PacMan2);
    CreateChar(2,PacMan3);
    CreateChar(3,PacMan4);

    PORTC.0 = 1;
    
    while (1)
    {
       MoveCursor(5,0);
       StringLCD("Hello");
       MoveCursor(3,1);
       StringLCD("Mr. PacMan");  
       
       for (i=0;i<16;i++) 
       {  
          r = 0;
          if (PINC.0 == 1)
          {
          MoveCursor(i,r);   //Paso 1
          CharLCD(0);        //Paso 2
          DelayPacman();  
          MoveCursor(i,r);   //Paso 3
          CharLCD(1);        //Paso 4  
          DelayPacman(); 
          MoveCursor(i,r);   //Paso 5
          CharLCD(' ');      //Paso 6 
          }
          if (PINC.0 == 0)
          {
            MoveCursor(i--,r);   //Paso 1
            CharLCD(2);        //Paso 2
            DelayPacman(); 
            MoveCursor(i--,r);   //Paso 3
            CharLCD(3);        //Paso 4
            DelayPacman(); 
            MoveCursor(i--,r);   //Paso 5
            sprintf("");      //Paso 6
          }  
       }
        
       
       
       
       
       
       
       
       
       for (i=0;i>=0;i--) 
       {
            MoveCursor(i,r);   //Paso 1
            CharLCD(2);        //Paso 2
            DelayPacman(); 
            MoveCursor(i,r);   //Paso 3
            CharLCD(3);        //Paso 4
            DelayPacman(); 
            MoveCursor(i,r);   //Paso 5
            CharLCD(' ');      //Paso 6
       }
        
    }
}
