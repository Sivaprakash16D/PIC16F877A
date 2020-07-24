#include <pic.h>
#define _XTAL_FREQ 20000000 // _XTAL_FREQ must be defined for the __delay_ms() macro to work correctly
__CONFIG(0X3F3A);  //Disable Watch-dog-Timer,Power-up Timer,Brown-out Reset, Data EEPROM code protection off, Write protection off,In-Circuit Debugger,Code protection off


void main()
{
  TRISA=0X00;	//PORT A all output
  ADCON1=0X06;  //Analog Pins Are disable
  
	while(1)
	  { 
	    PORTA=0X01;
	   __delay_ms(100);
	    PORTA=0X00;
	   __delay_ms(100);
	
	  }
}