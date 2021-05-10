/*
 * melodia.c
 *
 * Created: 21/04/2021 09:10:28 a. m.
 * Author: ManuelNeri
 */


#include <io.h>
#include <delay.h>

//CANCION DE PACMAN
#define NOTE_B0  31
#define NOTE_C1  33
#define NOTE_CS1 35
#define NOTE_D1  37
#define NOTE_DS1 39
#define NOTE_E1  41
#define NOTE_F1  44
#define NOTE_FS1 46
#define NOTE_G1  49
#define NOTE_GS1 52
#define NOTE_A1  55
#define NOTE_AS1 58
#define NOTE_B1  62
#define NOTE_C2  65
#define NOTE_CS2 69
#define NOTE_D2  73
#define NOTE_DS2 78
#define NOTE_E2  82
#define NOTE_F2  87
#define NOTE_FS2 93
#define NOTE_G2  98
#define NOTE_GS2 104
#define NOTE_A2  110
#define NOTE_AS2 117
#define NOTE_B2  123
#define NOTE_C3  131
#define NOTE_CS3 139
#define NOTE_D3  147
#define NOTE_DS3 156
#define NOTE_E3  165
#define NOTE_F3  175
#define NOTE_FS3 185
#define NOTE_G3  196
#define NOTE_GS3 208
#define NOTE_A3  220
#define NOTE_AS3 233
#define NOTE_B3  247
#define NOTE_C4  262
#define NOTE_CS4 277
#define NOTE_D4  294
#define NOTE_DS4 311
#define NOTE_E4  330
#define NOTE_F4  349
#define NOTE_FS4 370
#define NOTE_G4  392
#define NOTE_GS4 415
#define NOTE_A4  440
#define NOTE_AS4 466
#define NOTE_B4  494
#define NOTE_C5  523
#define NOTE_CS5 554
#define NOTE_D5  587
#define NOTE_DS5 622
#define NOTE_E5  659
#define NOTE_F5  698
#define NOTE_FS5 740
#define NOTE_G5  784
#define NOTE_GS5 831
#define NOTE_A5  880
#define NOTE_AS5 932
#define NOTE_B5  988
#define NOTE_C6  1047
#define NOTE_CS6 1109
#define NOTE_D6  1175
#define NOTE_DS6 1245
#define NOTE_E6  1319
#define NOTE_F6  1397
#define NOTE_FS6 1480
#define NOTE_G6  1568
#define NOTE_GS6 1661
#define NOTE_A6  1760
#define NOTE_AS6 1865
#define NOTE_B6  1976
#define NOTE_C7  2093
#define NOTE_CS7 2217
#define NOTE_D7  2349
#define NOTE_DS7 2489
#define NOTE_E7  2637
#define NOTE_F7  2794
#define NOTE_FS7 2960
#define NOTE_G7  3136
#define NOTE_GS7 3322
#define NOTE_A7  3520
#define NOTE_AS7 3729
#define NOTE_B7  3951
#define NOTE_C8  4186
#define NOTE_CS8 4435
#define NOTE_D8  4699
#define NOTE_DS8 4978
#define REST      0


flash int melody[] = {

  // Pacman
  // Score available at https://musescore.com/user/85429/scores/107109
  NOTE_B4, 16, NOTE_B5, 16, NOTE_FS5, 16, NOTE_DS5, 16, //1
  NOTE_B5, 32, NOTE_FS5, -16, NOTE_DS5, 8, NOTE_C5, 16,
  NOTE_C6, 16, NOTE_G6, 16, NOTE_E6, 16, NOTE_C6, 32, NOTE_G6, -16, NOTE_E6, 8,

  NOTE_B4, 16,  NOTE_B5, 16,  NOTE_FS5, 16,   NOTE_DS5, 16,  NOTE_B5, 32,  //2
  NOTE_FS5, -16, NOTE_DS5, 8,  NOTE_DS5, 32, NOTE_E5, 32,  NOTE_F5, 32,
  NOTE_F5, 32,  NOTE_FS5, 32,  NOTE_G5, 32,  NOTE_G5, 32, NOTE_GS5, 32,  NOTE_A5, 16, NOTE_B5, 8,
 
};

int notes = sizeof(melody) / sizeof(melody[0]) / 2;
int wholenote = 228;
int divider = 0, noteDuration = 0;

////////////////////////////////////////////////////////////////////////

void tono(float frec){
 float Cuentas;
 unsigned int CuentasEnt;
 DDRB.5=1;  
 Cuentas=500000.0/frec;//Ejemplo 1 frec=293.6 Cuentas=1702.997 Ejemplo2 frec=261.6 Cuentas=1911.31
 CuentasEnt=Cuentas;
 if((Cuentas-CuentasEnt)>=0.5)
    CuentasEnt++;
 TCCR1A=0x40; //Modo CTC
 TCCR1B=0x09; // SIn Pre-escalador (CK)
 OCR1AH=(CuentasEnt-1)/256;
 OCR1AL=(CuentasEnt-1)%256;
}

void noTono(){
 TCCR1A=0;
 TCCR1B=0;  //Apaga timer (Stop)
}

void main(void)
{ 
    PORTC.0 = 1;
    CLKPR=0x80;
    CLKPR=0x04;//Mega a 1Mhz  16Mhz/16=1MHz
    while (1)
    {  
            unsigned int thisNote;   
            for (thisNote = 0; thisNote < notes * 2; thisNote = thisNote + 2) {
            divider = melody[thisNote + 1];
              if (divider > 0) {
                    noteDuration = (wholenote) / divider;
              } else if (divider < 0) {          
                    divider=(-1)*divider;
                    noteDuration = (wholenote) /divider;
                    noteDuration = noteDuration*1.5;
              }
            while (PORTC.0 == 0){
            tono(melody[thisNote]);
            delay_ms(noteDuration*0.9);
            noTono();
            delay_ms(noteDuration*0.1);
            }
            }
    }
}
