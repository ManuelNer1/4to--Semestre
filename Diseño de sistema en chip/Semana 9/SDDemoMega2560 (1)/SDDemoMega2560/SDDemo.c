#include <io.h>               
#include <delay.h>
#include <stdio.h>
#include <ff.h>
#include <display.h>

#asm
    .equ __lcd_port=0x02
    .equ __lcd_EN=1
    .equ __lcd_RS=0
    .equ __lcd_D4=2
    .equ __lcd_D5=3
    .equ __lcd_D6=4
    .equ __lcd_D7=5
#endasm


char NombreArchivo[]  = "0:Hola.txt";
char TextoEscritura[] = "Manuel Neri A01706450";

interrupt [TIM1_COMPA] void timer1_compa_isr(void)
{
disk_timerproc();
/* MMC/SD/SD HC card access low level timing function */
}
    

void main()
{
    unsigned int  br;
    char buffer[100];
    
    /* FAT function result */
    FRESULT res;
    
    /* will hold the information for logical drive 0: */
    FATFS drive;
    FIL archivo; // file objects
    
    CLKPR=0x80;         
    CLKPR=0x01;         //Cambiar a 8MHz la frecuencia de operaci?n del micro 
      
    // C?digo para hacer una interrupci?n peri?dica cada 10ms
    // Timer/Counter 1 initialization
    // Clock source: System Clock
    // Clock value: 1000.000 kHz
    // Mode: CTC top=OCR1A
    // Compare A Match Interrupt: On
    TCCR1B=0x0A;     //CK/8 10ms con oscilador de 8MHz
    OCR1AH=0x27;
    OCR1AL=0x10;
    TIMSK1=0x02; 
           
    DDRB.7=1;
    SetupLCD();
    #asm("sei")
    /* Inicia el puerto SPI para la SD */
    disk_initialize(0);
    delay_ms(200);
    
    /* mount logical drive 0: */
    if ((res=f_mount(0,&drive))==FR_OK){
        MoveCursor(0,0);
        StringLCD("Drive Detectado  ");
        delay_ms(1500);
        
        /*Lectura de Archivo*/
        res = f_open(&archivo, NombreArchivo, FA_OPEN_ALWAYS | FA_WRITE | FA_READ);
        if (res==FR_OK){
            MoveCursor(0,0);
        StringLCD("Archivo        ");
            MoveCursor(0,1);
            StringLCD("Encontrado");
            delay_ms(1500);
            
            f_read(&archivo, buffer, 10,&br); //leer archivo
            
            MoveCursor(0,0); 
            StringLCD("El Archivo dice:   ");
            MoveCursor(0,1);
            StringLCD("                    ");
            delay_ms(1500);
             
            MoveCursor(0,1);
            //StringLCDVar(buffer);
            delay_ms(1500);
            
            /*Escribiendo en el mismo Arcvhivo*/
            EraseLCD();
            MoveCursor(0,0); 
            StringLCD("Escribiendo ...");
            
            /*Mover el apuntador al final del archivo*/
           
            f_lseek(&archivo,archivo.fsize);  
            
            buffer[0] = 0x0D;                //Carriage return   
            buffer[1] = 0x0A;                //Line Feed
            f_write(&archivo,buffer,2,&br);
            /*Escribiendo el Texto*/            
            f_write(&archivo,TextoEscritura,sizeof(TextoEscritura),&br);
            f_close(&archivo);           
            delay_ms(500);
            
            EraseLCD();
            MoveCursor(0,1); 
            StringLCD("Listo");  
            PORTB.7=1;
        }              
        else{
            StringLCD("Archivo NO Encontrado");
           
        }
    }
    else{
         StringLCD("Drive NO Detectado");
         while(1);
    }
    f_mount(0, 0); //Cerrar drive de SD
    while(1);
}
