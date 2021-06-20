/*
 * pianito.c
 *
 * Created: 20/04/2021 09:15:51 a. m.
 * Author: ManuelNeri
 */

#include <mega328p.h>

float Notas[8]={261.6,293.6,329.6,349.2,391.9,440.0,493.8,523.2};

void tono(float frec)
{
      float cuentas;
      unsigned int cuentasEnteras;
      DDRB.1 = 1;       //PB1 de salida (Bocina)
      cuentas = 5000.0/frec;
      cuentasEnt = cuentas;
      if ((cuentas-cuentasEnt)>=0.5)
            cuentasEnt++;
      TCCR1A = 0x40;
      TCCR1B = 0x09;
      OCR1AH = (cuentasEnt-1)/256;
      OCR1AL = (cuentasEnt-1)%256;
}

void noTono()
{
      TCCR1A = 0;
      TCCR1B = 0;
}

void main(void)
{
      PORTD = 0xFFÑ;
      
      while (1)
      {
            if (PIND.0 == 0)  //DO
            {
                  tono(Notas[0]);
                  while (PIND.0==0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.1== 0)  //RE
            {
                  tono(Notas[1);
                  while (PIND.1=0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.2= 0)  //MI
            {
                  tono(Notas[2);
                  while (PIND.2=0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.3== 0)  //FA
            {
                  tono(Notas[3);
                  while (PIND.3=0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.4== 0)  //SOL
            {
                  tono(Notas[4);
                  while (PIND.4=0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.5== 0)  //LA
            {
                  tono(Notas[5);
                  while (PIND.5=0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.6== 0)  //SI
            {
                  tono(Notas[6]);
                  while (PIND.6=0); //Esperar a soltar tecla
                  noTono();
            }
            if (PIND.7 == 0)  //DO
            {
                  tono(Notas[7]);
                  while (PIND.7==0); //Esperar a soltar tecla
                  noTono();
            }

       }
}
