/*************************************************************************
                           HEADER FILES
**************************************************************************/
#include<pic.h>                 
#define _XTAL_FREQ 20000000 // _XTAL_FREQ must be defined for the __delay_ms() macro to work correctly
__CONFIG(0X3F39);  //Disable Watch-dog-Timer,Power-up Timer,Brown-out Reset, Data EEPROM code protection off, Write protection off,In-Circuit Debugger,Code protection off

/*************************************************************************
                       FUNCTION DECLARATIONS
**************************************************************************/             
void LCD_Command(int com);
void LCD_Data(int data);           
void Display(const char Adr, const char *LCD);  
void Delay_us(char Delay);
void Delay_100us(unsigned long int Delay); 

/*************************************************************************
                       VARIABLE DECLARATIONS
**************************************************************************/
int k,result;
char array[5];

/*************************************************************************
                           MAIN FUNCTION
**************************************************************************/
void main()                    
{
 TRISA = 0XFF;                /* PORTA configured as i/p                 */
 TRISC = 0X00;                /* LCD control lines configured as o/p     */
 TRISD = 0X00;                /* LCD data lines configured as o/p        */

 LCD_Command(0X30);           /* LCD specification command               */
 Delay_us(35);
 LCD_Command(0X30);           /* LCD specification command               */
 Delay_us(35);
 LCD_Command(0X30);           /* LCD specification command               */
 Delay_us(35);
 LCD_Command(0X38);           /* Double Line Display Command             */
 LCD_Command(0X06);           /* Auto Increment Location Address Command */
 LCD_Command(0X0C);           /* Display ON Command                      */
 LCD_Command(0X01);           /* Clear Display Command                   */
 Delay_100us(30);
 Display(0x80,"ADC Result:"); /* Display string in the first line        */

 ADCON0 = 0x81;               /* Clock source=Fosc/32, channel-0, ADON=1 */
 ADCON1 = 0x80;               /* Result right justified                  */
 while(1)
 {
  ADGO   = 1;                   
  while(ADGO==1);             /* Wait until ADGO=0 (conversion completed)*/
  result = ADRESH;            /* Copy the 2 bit in ADRESH to result      */
  result = result << 8;       /* Shift it 8 bits to left                 */
  result = result + ADRESL;   /* Add left shifted value to 8 bit ADRESL  */

  for(k=0; k<=3; k++)         /* Convert the result in integer to ASCII  */
  {
   array[k] = result % 10;    /* Separate each digit of the integer      */
   result   = result / 10;
  }

  LCD_Command(0X8C);
  for(k=3; k>=0; k--)
  {
   LCD_Data(array[k]+'0');    /* Display the result on LCD               */
  }
 }
}

/*************************************************************************
* Function    : LCD_Command                                              *
*                                                                        *
* Description : Function to send a command to LCD                        *
*                                                                        *
* Parameters  : com - command to be sent                                 *
**************************************************************************/
void LCD_Command(int com)
{
 PORTD = com;                 /* Write the command to data lines         */
 RC0   = 0;                   /* RS-0(Command register)                  */
 RC1   = 1;                   /* E-1(Enable pin high)                    */
 Delay_us(30);                
 RC1   = 0;                   /* E-0(Enable pin low)                     */
}	

/*************************************************************************
* Function    : LCD_Data                                                 *
*                                                                        *
* Description : Function to display single character on LCD              *
*                                                                        *
* Parameters  : data - character to be displayed                         *
**************************************************************************/
void LCD_Data(int data)
{
 PORTD = data;                /* Write the character to data lines       */
 RC0   = 1;                   /* RS-1(Data register)                     */
 RC1   = 1;                   /* E-1(Enable pin high)                    */
 Delay_us(30);                  
 RC1   = 0;                   /* E-0(Enable pin low)                     */
}

/*************************************************************************
* Function    : Display                                                  *
*                                                                        *
* Description : Function to display string on LCD                        *
*                                                                        *
* Parameters  : loc - location                                           *
*               String to be displayed                                   *
**************************************************************************/
void Display(const char loc, const char *LCD)
{
 LCD_Command(loc);            /* Address of location to display string   */
 while(*LCD!='\0')            /* Check for termination character         */
 {	
  LCD_Data(*LCD);             /* Display the character on LCD            */
  LCD++;                      /* Increment the pointer                   */
 }
}

/*************************************************************************
* Function    : Delay_us                                                 *
*                                                                        *
* Description : Function for 1 microsecond delay                         *
*                                                                        *
* Parameter   : Delay - delay in microseconds                            *
**************************************************************************/
void Delay_us(char Delay)    
{		
 while((--Delay)!=0);	
}

/*************************************************************************
* Function    : Delay_100us                                              *
*                                                                        *
* Description : Function for delay                                       *
*                                                                        *
* Parameter   : Delay - delay interval                                   *
**************************************************************************/
void Delay_100us(unsigned long int Delay)
{
 Delay = Delay*15;
 while((--Delay)!=0);
}

/***************************  END OF PROGRAM  ****************************/