/*
 * File:   RELOJ_LCD_16x2_MAIN.c
 * Author: Familia CS
 *
 * Created on 10 de abril de 2025, 00:00
 * Asociado a Github
 */

#include "CFG_16F877A.h"

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
    T1CONbits.T1CKPS = 0;                                                       //Timer 1 reloj entrada a 1:8
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
    I2C_Cmd(_Dir_DS1307_W,_Registro_Ctr,_Salida_1seg);                          //Configurar salida de 1seg el DS1307   
    if (re == 3)
    {
        Lcd_pos_x(3);
        Lcd_Write_String("Dispositivo");
        Lcd_pos_y(2);
        Lcd_Write_String("DS1307 NO OK");
        re = 0;
        __delay_ms(3000);
        Lcd_cmd_data(_LCD_CLEAR,cmd,_4bits);        
    }    
    I2C_Cmd(_Dir_DS1307_W,_Registro_Seg,0x01);                                  //Configurar salida de 1seg el DS1307     
//*********************Comunicacion y CFG BMP280********************************
    I2C_Write(_bmp280_w,_bmp280_ID,_bmp280_r);
    if (re == 3)
    {
        Lcd_pos_x(3);
        Lcd_Write_String("Dispositivo");
        Lcd_pos_y(2);
        Lcd_Write_String("BMP280 NO OK");
        re = 0;
        __delay_ms(3000);
        Lcd_cmd_data(_LCD_CLEAR,cmd,_4bits);        
    }     
    I2C_Read_8bits();
    if (DATO_I2C_8bits == 0x58)
    {
    }
    I2C_Cmd(_bmp280_w,_bmp280_reg_reset,_bmp280_reset);
    __delay_ms(2);
    I2C_Cmd(_bmp280_w,_bmp280_ctrl_mes,_mode_sleep);
    I2C_Cmd(_bmp280_w,_bmp280_CFG,0x90);
    I2C_Cmd(_bmp280_w,_bmp280_ctrl_mes,0x63);                                   //modo normal-presion_16bits-temperatura_16bits.
    __delay_ms(50);
//*************************Calibracion BMP280***********************************
    CALIBRATION_BMP280();
//***************************AHT20 inicializacion*******************************
    I2C_Write_AHT20(AHT20_W,AHT20_ini,AHT20_P1);
    I2C_Write_AHT20(AHT20_W,AHT20_Mes,AHT20_P3);    
//*****************************Mensaje LCD inicio*******************************    
    Lcd_pos_x(6);                                                               //Ubicar la LCD en posicion 6 de la coordenada X    
    Lcd_Write_String("Reloj");                                                  //Escribir en la LCD "RELOJ"
    Lcd_pos_y(4);                                                               //Ubicar en la posicion 4 de la coordenada Y
    Lcd_Write_String("LCD 16x2");                                               //Escribir en la LCD "LCD 16x2"
    __delay_ms(2000);
    Lcd_cmd_data(_LCD_CLEAR,cmd,_4bits);
//******************************************************************************    
    while (1)
    {
        Led = 1;
        __delay_ms(250);
        Led = 0;
        __delay_ms(250);   
//------------------------------------------------------------------------------
        Lcd_pos_x(1);
        Lcd_Write_String("Grados");        
        CALCULO_BMP280();
        CONVERSOR_HEX_DEC(temp);
        Lcd_pos_y(1);
        Lcd_Write_Char(millar);
        Lcd_pos_y(2);
        Lcd_Write_Char(centena);
        Lcd_pos_y(3);
        Lcd_Write_Char('.');
        Lcd_pos_y(4);
        Lcd_Write_Char(decena);
        Lcd_pos_y(5);
        Lcd_Write_Char(unidad);
        I2C_Check();
    SSPCON2bits.SEN = 1;                                                        //Activo el start
    __delay_us(5);
    while (SSPCON2bits.SEN == 1)                                                //verifico el start
    {
    }
    I2C_Check();                                                                //verifico el bus
    SSPBUF = 0x71;                                                              //ingreso direccion esclavo
    while (SSPSTATbits.BF == 1)                                                 //verifico si termino la transmision
    {
    }
    I2C_Check();
    while (SSPCON2bits.ACKSTAT == 1 && re == 0)                                 //verifico reconocimiento
    {
    }
//******************************************************************************    
    I2C_Check();     
        __delay_ms(100);
        I2C_Read_8bits_6bytes();
    }
}
