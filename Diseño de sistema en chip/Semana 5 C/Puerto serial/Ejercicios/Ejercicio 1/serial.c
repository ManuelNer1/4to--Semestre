/*
 * serial.c
 *
 * Created: 28/04/2021 10:25:26 a. m.
 * Author: ManuelNeri
 */

#include <io.h>
#include <stdio.h>

char dato;

void main(void)
{
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
    
    printf("Hola Mundo!\r");
    
    while (1)
    {
        dato = getchar();   //Leer del puerto serial un caracter
        if ((dato >= '0')&&(dato<='9'))
            printf(" ES NUMERO\r");
        else
            printf(" ES OTRO\r");
    }
}
