/*
 * PacManMario.c
 * PacMan y Mario juntos con interrupciones
 * Created: 27/04/2018 09:46:00 a. m.
 * Author: Clase Micros
 */

#asm
    .equ __lcd_port=0x0B
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

flash int du=262,re= 294, ri=312, mi =330,fa=349, fi=370, sol=391,si=416, la=440, li=467, ti=494;
flash int MarioBros[591]={mi*2,mi*2,1,mi*2,1,du*2,mi*2,1,sol*2,1,1,1,sol,1,1,1,du*2,1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1,sol,mi*2,1,sol*2,la*2,1,fa*2,sol*2,
1,mi*2,1,du*2,re*2,ti,1,1,du*2,1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1,sol,mi*2,1,sol*2,la*2,1,fa*2,sol*2,1,mi*2,1,du*2,re*2,ti,1,1,1,1,sol*2,fi*2,fa*2,ri*2,1,
mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,du*4,1,du*4,du*4,1,1,1,1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,
ri*2,1,1,re*2,1,1,du*2,1,1,1,1,1,1,1,1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,du*4,1,du*4,du*4,1,1,1,
1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,ri*2,1,1,re*2,1,1,du*2,1,1,1,1,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,mi*2,du*2,1,la,sol,1,1,1,
du*2,du*2,1,du*2,1,du*2,re*2,1,1,1,1,1,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,mi*2,du*2,1,la,sol,1,1,1,mi*2,mi*2,1,mi*2,1,du*2,mi*2,1,sol*2,1,1,1,sol,1,1,1,du*2,
1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1,sol,mi*2,1,sol*2,la*2,1,fa*2,sol*2,1,mi*2,1,du*2,re*2,ti,1,1,du*2,1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1,sol,mi*2,1,sol*2,
la*2,1,fa*2,sol*2,1,mi*2,1,du*2,re*2,ti,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,la*2,1,la*2,la*2,sol*2,1,fa*2,mi*2,du*2,1,la,sol,1,1,1,mi*2,du*2,
1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,fa*2,1,fa*2,fa*2,mi*2,1,re*2,sol,mi,1,mi,du,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,la*2,1,la*2,la*2,
sol*2,1,fa*2,mi*2,du*2,1,la,sol,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,fa*2,1,fa*2,fa*2,mi*2,1,re*2,sol,mi,1,mi,du,1,1,1,du*2,du*2,1,du*2,1,
du*2,re*2,1,mi*2,du*2,1,la,sol,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,1,1,1,1,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,mi*2,du*2,1,la,sol,1,1,1,mi*2,mi*2,1,mi*2,1,du*2,
mi*2,1,sol*2,1,1,1,sol,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,la*2,1,la*2,la*2,sol*2,1,fa*2,mi*2,du*2,1,la,sol,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la,
fa*2,1,fa*2,la,1,1,1,ti,fa*2,1,fa*2,fa*2,mi*2,1,re*2,sol,mi,1,mi,du,1,1,1,0}; 

void tono (float f)
{
    float Cuentas;
    unsigned int CuentasEnt;
    
    Cuentas=500000.0/f;
    CuentasEnt=Cuentas;
    if ((Cuentas-CuentasEnt)>=0.5)  //Redondear
       CuentasEnt++;     
    TCCR1A=0x40;
    TCCR1B=0x09;
    OCR1AH=(CuentasEnt-1)>>8;
    OCR1AL=(CuentasEnt-1)&0xFF;      
}

void noTono()
{
    TCCR1A=0x00;
    TCCR1B=0x00; 
    PORTB.1=0;  //Apaga puerto manualmente
}

unsigned int j;

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

interrupt [TIM2_COMPA] void nota (void)
{
    if (MarioBros[j]!=1)
        tono(MarioBros[j]);
    else
        noTono();
    j++;
    if (j==591)
        j=0;
}

void main(void)
{
    DDRB.1=1;   //PB1 de salida (bocina)
    TCCR2A = 0x02;  //Modo de CTC
    TCCR2B = 0x07;  //Con CK/1024 PARA CONTEO DE 0.1 SEG
    OCR2A = 97;
    TIMSK2 = 0x02;  //Habilitar interrucion
    #asm("SET")
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
