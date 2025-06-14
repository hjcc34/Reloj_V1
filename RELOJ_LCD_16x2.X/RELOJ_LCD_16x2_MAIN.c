/*
 * File:   RELOJ_LCD_16x2_MAIN.c
 * Author: Familia CS
 *
 * Created on 10 de abril de 2025, 00:00
 * Asociado a Github
 */

#include "CFG_16F877A.h"
//--------------------------------Interrupcion----------------------------------
//------------------------------------------------------------------------------
//---------------------------Inicio de CFG del micro----------------------------
//------------------------------------------------------------------------------
void main(void) 
{
    TRISA = 0;                                                                  //Puerto A RA0 como entrada               
    TRISD = 0;                                                                  //Puerto D todos salidas
    TRISE = 0;                                                                  //Puerto E todos salidas
    TRISC = 0;                                                                  //PORTC7, PORTC1 y PORTC0 como entradas
    TRISB = 0xFF;                                                               //Todos los pines de puerto B como entradas
    CMCON = 0x07;                                                               //DESACTIVA LOS COMPARADORES
    OPTION_REGbits.nRBPU = 0;                                                   //Activar push pull en puerto B
    PORTA = 0; PORTB = 0; PORTC = 0; PORTD = 0; PORTE = 0;                      //Limpiar todos los puertos
    CMCON = 0x07; ADCON1bits.PCFG = 6;                                          //DESACTIVA LOS COMPARADORES y Desactiva entradas analogicas
//------------------------------------------------------------------------------    
//---------------------------Programa de incio----------------------------------
//------------------------------------------------------------------------------
//****************************Inicializar LCD 4bits*****************************
    Lcd_inicio_4bits();                                                         //Inicializar la LCD a 4bits
//***************************Inicializar I2C************************************
    I2C_Initialize();
//***********************Comunicacion y CFG DS1307******************************
    CFG_DS1307();
//*****************************Mensaje LCD inicio*******************************    
    Lcd_pos_x(6);                                                               //Ubicar la LCD en posicion 6 de la coordenada X    
    Lcd_Write_String("Reloj");                                                  //Escribir en la LCD "RELOJ"
    Lcd_pos_y(4);                                                               //Ubicar en la posicion 4 de la coordenada Y
    Lcd_Write_String("LCD 16x2");                                               //Escribir en la LCD "LCD 16x2"
//******************************************************************************    
    while (1)
    {
        Led = 1;
        __delay_ms(100);
        Led = 0;
        __delay_ms(100);
    }
}
