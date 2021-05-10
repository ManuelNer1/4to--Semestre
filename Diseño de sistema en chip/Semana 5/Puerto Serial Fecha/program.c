/*
 * program.c
 *
 * Created: 30/04/2021 02:28:10 p. m.
 * Author: ManuelNeri
 */

#include <io.h>
#include <stdio.h>

int dia, mes, year, diasemana;
char sep1, sep2;


void main(void)
{
    UCSR0A = 0x02;
    UCSR0B = 0x18;
    UCSR0C = 0X06;
    UBRR0H = 0x00;
    UBRR0L = 0x0C;
    
    while (1)
    {
        printf("Dame la fecha en formato dd-mm-yyy -> ");
        scanf("%i%c%i%c%i",&dia,&sep1,&mes,&sep2,&year); 
        
        if ((sep1 == '-')&&(sep2 == '-'))
        {
            if ((dia >= 1)&&(dia <= 31)&&(mes >= 1)&&(mes <= 12)&&(year >=1))
            {
                if (mes <=2)
                {
                    mes = mes+12;
                    year--;
                }
                diasemana = (dia+((mes+1)*26)/10+year+year/4+6*(year/100)+year/400)%7; 
                printf("El dia de la semana es:  ");
                switch(diasemana)
                {
                    case 0:
                        printf("SABADO \n\r");
                        break;
                    case 1:
                        printf("DOMINGO \n\r");
                        break;
                    case 2:
                        printf("LUNES \n\r");
                        break;
                    case 3:
                        printf("MARTES \n\r");
                        break;
                    case 4:
                        printf("MIERCOLES \n\r");
                        break;
                    case 5:
                        printf("JUEVES \n\r");
                        break;
                    case 6:
                        printf("VIERNES \n\r");
                        break;
                }
            }
            else
                printf("Formato No Validoooooo \n\r");
        }
        else
            printf("Formato No Valido \n\r");
    }
}
