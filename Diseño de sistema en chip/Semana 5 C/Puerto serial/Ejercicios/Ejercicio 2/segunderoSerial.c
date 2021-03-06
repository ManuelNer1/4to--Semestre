/*
 * segunderoSerial.c
 *
 * Created: 28/04/2021 11:17:39 a. m.
 * Author: ManuelNeri
 */

#include <io.h>
#include <delay.h>
#include <stdio.h>

unsigned int seg = 0;
char opcion;

void main(void)
{
    CLKPR = 0x80;
    CLKPR = 0;      //Micro a 8MHz 
    
    // USART initialization
    // Communication Parameters: 8 Data, 1 Stop, No Parity
    // USART Receiver: On
    // USART Transmitter: On
    // USART0 Mode: Asynchronous
    // USART Baud Rate: 19200 (Double Speed Mode)
    UCSR0A=(0<<RXC0) | (0<<TXC0) | (0<<UDRE0) | (0<<FE0) | (0<<DOR0) | (0<<UPE0) | (1<<U2X0) | (0<<MPCM0);
    UCSR0B=(0<<RXCIE0) | (0<<TXCIE0) | (0<<UDRIE0) | (1<<RXEN0) | (1<<TXEN0) | (0<<UCSZ02) | (0<<RXB80) | (0<<TXB80);
    UCSR0C=(0<<UMSEL01) | (0<<UMSEL00) | (0<<UPM01) | (0<<UPM00) | (0<<USBS0) | (1<<UCSZ01) | (1<<UCSZ00) | (0<<UCPOL0);
    UBRR0H=0x00;
    UBRR0L=0x19;
    
    printf ("Segundos transcurridos\r");
    
    while (1)
    {
        printf("%i seg\r",seg++);
        delay_ms(1000);
        if ((UCSR0A&0x80)!=0)
        {
            opcion = getchar();
            if ((opcion == 'C')||(opcion == 'c'))
            {
                seg = 0;
                printf("Segundos reiniciados\r");
            }
            
        }
    }
}
