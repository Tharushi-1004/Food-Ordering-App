/*
 * GccApplication1.c
 *
 * Created: 1/28/2025 10:24:22 AM
 * Author : Dell
 */ 
#define  F_CPU 16000000UL
#include <avr/io.h>


int main(void)
{
		ADMUX &=~((1<<REFS1)) |((REFS0<<1));//AREF external voltage
		ADMUX &=((1<<MUX0))|(1<<MUX1)|(1<<MUX2)|(1<<MUX3);//A0 selects
		ADCSRA |=((1<<ADEN))|((1<<ADPS0))|((ADPS1))|((ADPS2));//ADC enable,
		
		DDRD |=0xFF; //define port D as output
		DDRB |=0x03;//define port B as o/p
    /* Replace with your application code */
    while (1) 
    {
		ADCSRA |=(1<<ADSC); //start conversion
		while(ADCSRA & (1<<ADSC));  //can be written as (ADSCRA & 0B01000000);Checking when ADC becomes 0
		uint16_t adcValue =ADC;
		PORTD =(uint8_t)adcValue;
		
		//PORTD=ADC;
		PORTB=(PORTB & 0xFC)|((adcValue>>8)& 0x03);
		
		
    }
}

