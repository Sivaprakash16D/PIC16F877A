opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	dw 0X3F39 ;#
	FNCALL	_main,_LCD_Command
	FNCALL	_main,_Delay_us
	FNCALL	_main,_Delay_100us
	FNCALL	_main,_Display
	FNCALL	_main,___awmod
	FNCALL	_main,___awdiv
	FNCALL	_main,_LCD_Data
	FNCALL	_Display,_LCD_Command
	FNCALL	_Display,_LCD_Data
	FNCALL	_LCD_Data,_Delay_us
	FNCALL	_Delay_100us,___lmul
	FNCALL	_LCD_Command,_Delay_us
	FNROOT	_main
	global	_array
	global	_k
	global	_result
	global	_ADCON0
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_ADGO
_ADGO	set	250
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	116	;'t'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_array:
       ds      5

_k:
       ds      2

_result:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Delay_us
?_Delay_us:	; 0 bytes @ 0x0
	global	??_Delay_us
??_Delay_us:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	Delay_us@Delay
Delay_us@Delay:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	?_LCD_Command
?_LCD_Command:	; 0 bytes @ 0x1
	global	?_LCD_Data
?_LCD_Data:	; 0 bytes @ 0x1
	global	LCD_Command@com
LCD_Command@com:	; 2 bytes @ 0x1
	global	LCD_Data@data
LCD_Data@data:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_LCD_Command
??_LCD_Command:	; 0 bytes @ 0x3
	global	?_Display
?_Display:	; 0 bytes @ 0x3
	global	??_LCD_Data
??_LCD_Data:	; 0 bytes @ 0x3
	global	Display@LCD
Display@LCD:	; 1 bytes @ 0x3
	ds	1
	global	??_Display
??_Display:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	Display@loc
Display@loc:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_Delay_100us
?_Delay_100us:	; 0 bytes @ 0x0
	global	Delay_100us@Delay
Delay_100us@Delay:	; 4 bytes @ 0x0
	ds	4
	global	??_Delay_100us
??_Delay_100us:	; 0 bytes @ 0x4
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	2
;;Data sizes: Strings 12, constant 0, data 0, bss 9, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     10      19
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; Display@LCD	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _Display->_LCD_Command
;;   _Display->_LCD_Data
;;   _LCD_Data->_Delay_us
;;   _Delay_100us->___lmul
;;   _LCD_Command->_Delay_us
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Delay_100us
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     998
;;                                              8 BANK0      2     2      0
;;                        _LCD_Command
;;                           _Delay_us
;;                        _Delay_100us
;;                            _Display
;;                            ___awmod
;;                            ___awdiv
;;                           _LCD_Data
;; ---------------------------------------------------------------------------------
;; (1) _Display                                              4     3      1     155
;;                                              3 COMMON     4     3      1
;;                        _LCD_Command
;;                           _LCD_Data
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Data                                             2     0      2      44
;;                                              1 COMMON     2     0      2
;;                           _Delay_us
;; ---------------------------------------------------------------------------------
;; (1) _Delay_100us                                          8     4      4     137
;;                                              0 BANK0      8     4      4
;;                             ___lmul
;; ---------------------------------------------------------------------------------
;; (2) _LCD_Command                                          2     0      2      44
;;                                              1 COMMON     2     0      2
;;                           _Delay_us
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___lmul                                              13     5      8      92
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (2) _Delay_us                                             1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _LCD_Command
;;     _Delay_us
;;   _Delay_us
;;   _Delay_100us
;;     ___lmul
;;   _Display
;;     _LCD_Command
;;       _Delay_us
;;     _LCD_Data
;;       _Delay_us
;;   ___awmod
;;   ___awdiv
;;   _LCD_Data
;;     _Delay_us
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      20       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A      13       5       23.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      23      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_Command
;;		_Delay_us
;;		_Delay_100us
;;		_Display
;;		___awmod
;;		___awdiv
;;		_LCD_Data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	28
	
l2054:	
;ADC.c: 28: TRISA = 0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	29
	
l2056:	
;ADC.c: 29: TRISC = 0X00;
	clrf	(135)^080h	;volatile
	line	30
	
l2058:	
;ADC.c: 30: TRISD = 0X00;
	clrf	(136)^080h	;volatile
	line	32
	
l2060:	
;ADC.c: 32: LCD_Command(0X30);
	movlw	low(030h)
	movwf	(?_LCD_Command)
	movlw	high(030h)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	33
	
l2062:	
;ADC.c: 33: Delay_us(35);
	movlw	(023h)
	fcall	_Delay_us
	line	34
	
l2064:	
;ADC.c: 34: LCD_Command(0X30);
	movlw	low(030h)
	movwf	(?_LCD_Command)
	movlw	high(030h)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	35
	
l2066:	
;ADC.c: 35: Delay_us(35);
	movlw	(023h)
	fcall	_Delay_us
	line	36
	
l2068:	
;ADC.c: 36: LCD_Command(0X30);
	movlw	low(030h)
	movwf	(?_LCD_Command)
	movlw	high(030h)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	37
	
l2070:	
;ADC.c: 37: Delay_us(35);
	movlw	(023h)
	fcall	_Delay_us
	line	38
	
l2072:	
;ADC.c: 38: LCD_Command(0X38);
	movlw	low(038h)
	movwf	(?_LCD_Command)
	movlw	high(038h)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	39
	
l2074:	
;ADC.c: 39: LCD_Command(0X06);
	movlw	low(06h)
	movwf	(?_LCD_Command)
	movlw	high(06h)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	40
	
l2076:	
;ADC.c: 40: LCD_Command(0X0C);
	movlw	low(0Ch)
	movwf	(?_LCD_Command)
	movlw	high(0Ch)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	41
	
l2078:	
;ADC.c: 41: LCD_Command(0X01);
	movlw	low(01h)
	movwf	(?_LCD_Command)
	movlw	high(01h)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	42
	
l2080:	
;ADC.c: 42: Delay_100us(30);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay_100us+3)
	movlw	0
	movwf	(?_Delay_100us+2)
	movlw	0
	movwf	(?_Delay_100us+1)
	movlw	01Eh
	movwf	(?_Delay_100us)

	fcall	_Delay_100us
	line	43
	
l2082:	
;ADC.c: 43: Display(0x80,"ADC Result:");
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Display)
	movlw	(080h)
	fcall	_Display
	line	45
	
l2084:	
;ADC.c: 45: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	46
	
l2086:	
;ADC.c: 46: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	goto	l2088
	line	47
;ADC.c: 47: while(1)
	
l575:	
	line	49
	
l2088:	
;ADC.c: 48: {
;ADC.c: 49: ADGO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(250/8),(250)&7
	line	50
;ADC.c: 50: while(ADGO==1);
	goto	l576
	
l577:	
	
l576:	
	btfsc	(250/8),(250)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l576
u2520:
	goto	l2090
	
l578:	
	line	51
	
l2090:	
;ADC.c: 51: result = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_result)
	movf	1+(??_main+0)+0,w
	movwf	(_result+1)
	line	52
	
l2092:	
;ADC.c: 52: result = result << 8;
	movf	(_result+1),w
	movwf	(??_main+0)+0+1
	movf	(_result),w
	movwf	(??_main+0)+0
	movlw	08h
	movwf	btemp+1
u2535:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u2535
	movf	0+(??_main+0)+0,w
	movwf	(_result)
	movf	1+(??_main+0)+0,w
	movwf	(_result+1)
	line	53
	
l2094:	
;ADC.c: 53: result = result + ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_result),w
	movwf	(_result)
	movf	(_result+1),w
	skipnc
	incf	(_result+1),w
	movwf	((_result))+1
	line	55
	
l2096:	
;ADC.c: 55: for(k=0; k<=3; k++)
	movlw	low(0)
	movwf	(_k)
	movlw	high(0)
	movwf	((_k))+1
	
l2098:	
	movf	(_k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(04h)
	subwf	(_k),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l2102
u2540:
	goto	l2110
	
l2100:	
	goto	l2110
	line	56
	
l579:	
	line	57
	
l2102:	
;ADC.c: 56: {
;ADC.c: 57: array[k] = result % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_result+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_result),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_k),w
	addlw	_array&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	58
	
l2104:	
;ADC.c: 58: result = result / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_result+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_result),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_result+1)
	addwf	(_result+1)
	movf	(0+(?___awdiv)),w
	clrf	(_result)
	addwf	(_result)

	line	55
	
l2106:	
	movlw	low(01h)
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	
l2108:	
	movf	(_k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2555
	movlw	low(04h)
	subwf	(_k),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2102
u2550:
	goto	l2110
	
l580:	
	line	61
	
l2110:	
;ADC.c: 59: }
;ADC.c: 61: LCD_Command(0X8C);
	movlw	low(08Ch)
	movwf	(?_LCD_Command)
	movlw	high(08Ch)
	movwf	((?_LCD_Command))+1
	fcall	_LCD_Command
	line	62
	
l2112:	
;ADC.c: 62: for(k=3; k>=0; k--)
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_k)
	movlw	high(03h)
	movwf	((_k))+1
	
l2114:	
	btfss	(_k+1),7
	goto	u2561
	goto	u2560
u2561:
	goto	l2118
u2560:
	goto	l2088
	
l2116:	
	goto	l2088
	line	63
	
l581:	
	line	64
	
l2118:	
;ADC.c: 63: {
;ADC.c: 64: LCD_Data(array[k]+'0');
	movf	(_k),w
	addlw	_array&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	low(030h)
	movwf	(?_LCD_Data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_LCD_Data))+1
	fcall	_LCD_Data
	line	62
	
l2120:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(-1)
	addwf	(_k+1),f
	
l2122:	
	btfss	(_k+1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l2118
u2570:
	goto	l2088
	
l582:	
	goto	l2088
	line	66
	
l583:	
	line	47
	goto	l2088
	
l584:	
	line	67
	
l585:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Display
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:

;; *************** function _Display *****************
;; Defined at:
;;		line 110 in file "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;  loc             1    wreg     const unsigned char 
;;  LCD             1    3[COMMON] PTR const unsigned char 
;;		 -> STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  loc             1    6[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_Command
;;		_LCD_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text190
	file	"C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	line	110
	global	__size_of_Display
	__size_of_Display	equ	__end_of_Display-_Display
	
_Display:	
	opt	stack 5
; Regs used in _Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Display@loc stored from wreg
	movwf	(Display@loc)
	line	111
	
l2046:	
;ADC.c: 111: LCD_Command(loc);
	movf	(Display@loc),w
	movwf	(??_Display+0)+0
	clrf	(??_Display+0)+0+1
	movf	0+(??_Display+0)+0,w
	movwf	(?_LCD_Command)
	movf	1+(??_Display+0)+0,w
	movwf	(?_LCD_Command+1)
	fcall	_LCD_Command
	line	112
;ADC.c: 112: while(*LCD!='\0')
	goto	l2052
	
l595:	
	line	114
	
l2048:	
;ADC.c: 113: {
;ADC.c: 114: LCD_Data(*LCD);
	movf	(Display@LCD),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_Display+0)+0
	clrf	(??_Display+0)+0+1
	movf	0+(??_Display+0)+0,w
	movwf	(?_LCD_Data)
	movf	1+(??_Display+0)+0,w
	movwf	(?_LCD_Data+1)
	fcall	_LCD_Data
	line	115
	
l2050:	
;ADC.c: 115: LCD++;
	movlw	(01h)
	movwf	(??_Display+0)+0
	movf	(??_Display+0)+0,w
	addwf	(Display@LCD),f
	goto	l2052
	line	116
	
l594:	
	line	112
	
l2052:	
	movf	(Display@LCD),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2048
u2510:
	goto	l597
	
l596:	
	line	117
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_Display
	__end_of_Display:
;; =============== function _Display ends ============

	signat	_Display,8312
	global	_LCD_Data
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _LCD_Data *****************
;; Defined at:
;;		line 93 in file "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;  data            2    1[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_us
;; This function is called by:
;;		_main
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text191
	file	"C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	line	93
	global	__size_of_LCD_Data
	__size_of_LCD_Data	equ	__end_of_LCD_Data-_LCD_Data
	
_LCD_Data:	
	opt	stack 6
; Regs used in _LCD_Data: [wreg+status,2+status,0+pclath+cstack]
	line	94
	
l2036:	
;ADC.c: 94: PORTD = data;
	movf	(LCD_Data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	95
	
l2038:	
;ADC.c: 95: RC0 = 1;
	bsf	(56/8),(56)&7
	line	96
	
l2040:	
;ADC.c: 96: RC1 = 1;
	bsf	(57/8),(57)&7
	line	97
	
l2042:	
;ADC.c: 97: Delay_us(30);
	movlw	(01Eh)
	fcall	_Delay_us
	line	98
	
l2044:	
;ADC.c: 98: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	99
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Data
	__end_of_LCD_Data:
;; =============== function _LCD_Data ends ============

	signat	_LCD_Data,4216
	global	_Delay_100us
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _Delay_100us *****************
;; Defined at:
;;		line 139 in file "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;  Delay           4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text192
	file	"C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	line	139
	global	__size_of_Delay_100us
	__size_of_Delay_100us	equ	__end_of_Delay_100us-_Delay_100us
	
_Delay_100us:	
	opt	stack 6
; Regs used in _Delay_100us: [wreg+status,2+status,0+pclath+cstack]
	line	140
	
l2032:	
;ADC.c: 140: Delay = Delay*15;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Delay_100us@Delay+3),w
	movwf	(?___lmul+3)
	movf	(Delay_100us@Delay+2),w
	movwf	(?___lmul+2)
	movf	(Delay_100us@Delay+1),w
	movwf	(?___lmul+1)
	movf	(Delay_100us@Delay),w
	movwf	(?___lmul)

	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	0
	movwf	1+(?___lmul)+04h
	movlw	0Fh
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Delay_100us@Delay+3)
	movf	(2+(?___lmul)),w
	movwf	(Delay_100us@Delay+2)
	movf	(1+(?___lmul)),w
	movwf	(Delay_100us@Delay+1)
	movf	(0+(?___lmul)),w
	movwf	(Delay_100us@Delay)

	line	141
;ADC.c: 141: while((--Delay)!=0);
	goto	l2034
	
l607:	
	goto	l2034
	
l606:	
	
l2034:	
	movlw	01h
	movwf	((??_Delay_100us+0)+0)
	movlw	0
	movwf	((??_Delay_100us+0)+0+1)
	movlw	0
	movwf	((??_Delay_100us+0)+0+2)
	movlw	0
	movwf	((??_Delay_100us+0)+0+3)
	movf	0+(??_Delay_100us+0)+0,w
	subwf	(Delay_100us@Delay),f
	movf	1+(??_Delay_100us+0)+0,w
	skipc
	incfsz	1+(??_Delay_100us+0)+0,w
	goto	u2495
	goto	u2496
u2495:
	subwf	(Delay_100us@Delay+1),f
u2496:
	movf	2+(??_Delay_100us+0)+0,w
	skipc
	incfsz	2+(??_Delay_100us+0)+0,w
	goto	u2497
	goto	u2498
u2497:
	subwf	(Delay_100us@Delay+2),f
u2498:
	movf	3+(??_Delay_100us+0)+0,w
	skipc
	incfsz	3+(??_Delay_100us+0)+0,w
	goto	u2499
	goto	u2490
u2499:
	subwf	(Delay_100us@Delay+3),f
u2490:

	movf	((Delay_100us@Delay+3)),w
	iorwf	((Delay_100us@Delay+2)),w
	iorwf	((Delay_100us@Delay+1)),w
	iorwf	((Delay_100us@Delay)),w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2034
u2500:
	goto	l609
	
l608:	
	line	142
	
l609:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_100us
	__end_of_Delay_100us:
;; =============== function _Delay_100us ends ============

	signat	_Delay_100us,4216
	global	_LCD_Command
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _LCD_Command *****************
;; Defined at:
;;		line 77 in file "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;  com             2    1[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay_us
;; This function is called by:
;;		_main
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text193
	file	"C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	line	77
	global	__size_of_LCD_Command
	__size_of_LCD_Command	equ	__end_of_LCD_Command-_LCD_Command
	
_LCD_Command:	
	opt	stack 5
; Regs used in _LCD_Command: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l2022:	
;ADC.c: 78: PORTD = com;
	movf	(LCD_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	79
	
l2024:	
;ADC.c: 79: RC0 = 0;
	bcf	(56/8),(56)&7
	line	80
	
l2026:	
;ADC.c: 80: RC1 = 1;
	bsf	(57/8),(57)&7
	line	81
	
l2028:	
;ADC.c: 81: Delay_us(30);
	movlw	(01Eh)
	fcall	_Delay_us
	line	82
	
l2030:	
;ADC.c: 82: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	83
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Command
	__end_of_LCD_Command:
;; =============== function _LCD_Command ends ============

	signat	_LCD_Command,4216
	global	___awmod
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text194
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1986:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1988:	
	btfss	(___awmod@dividend+1),7
	goto	u2401
	goto	u2400
u2401:
	goto	l1992
u2400:
	line	10
	
l1990:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l1992
	line	12
	
l826:	
	line	13
	
l1992:	
	btfss	(___awmod@divisor+1),7
	goto	u2411
	goto	u2410
u2411:
	goto	l1996
u2410:
	line	14
	
l1994:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1996
	
l827:	
	line	15
	
l1996:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l2014
u2420:
	line	16
	
l1998:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2004
	
l830:	
	line	18
	
l2000:	
	movlw	01h
	
u2435:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2435
	line	19
	
l2002:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2004
	line	20
	
l829:	
	line	17
	
l2004:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2000
u2440:
	goto	l2006
	
l831:	
	goto	l2006
	line	21
	
l832:	
	line	22
	
l2006:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2455
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2455:
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2010
u2450:
	line	23
	
l2008:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2010
	
l833:	
	line	24
	
l2010:	
	movlw	01h
	
u2465:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2465
	line	25
	
l2012:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2006
u2470:
	goto	l2014
	
l834:	
	goto	l2014
	line	26
	
l828:	
	line	27
	
l2014:	
	movf	(___awmod@sign),w
	skipz
	goto	u2480
	goto	l2018
u2480:
	line	28
	
l2016:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2018
	
l835:	
	line	29
	
l2018:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l836
	
l2020:	
	line	30
	
l836:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1948:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1950:	
	btfss	(___awdiv@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l1954
u2300:
	line	11
	
l1952:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1954
	line	13
	
l758:	
	line	14
	
l1954:	
	btfss	(___awdiv@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l759
u2310:
	line	15
	
l1956:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1958:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l759:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l1978
u2320:
	line	20
	
l1960:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1966
	
l762:	
	line	22
	
l1962:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	23
	
l1964:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1966
	line	24
	
l761:	
	line	21
	
l1966:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1962
u2340:
	goto	l1968
	
l763:	
	goto	l1968
	line	25
	
l764:	
	line	26
	
l1968:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2355
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l1974
u2360:
	line	28
	
l1970:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1972:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1974
	line	30
	
l765:	
	line	31
	
l1974:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	32
	
l1976:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l1968
u2380:
	goto	l1978
	
l766:	
	goto	l1978
	line	33
	
l760:	
	line	34
	
l1978:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2390
	goto	l1982
u2390:
	line	35
	
l1980:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1982
	
l767:	
	line	36
	
l1982:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l768
	
l1984:	
	line	37
	
l768:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lmul
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Delay_100us
;; This function uses a non-reentrant model
;;
psect	text196
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 6
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l1934:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l1936
	line	6
	
l693:	
	line	7
	
l1936:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1940
u2250:
	line	8
	
l1938:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2261
	addwf	(___lmul@product+1),f
u2261:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2262
	addwf	(___lmul@product+2),f
u2262:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2263
	addwf	(___lmul@product+3),f
u2263:

	goto	l1940
	
l694:	
	line	9
	
l1940:	
	movlw	01h
	movwf	(??___lmul+0)+0
u2275:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u2275
	line	10
	
l1942:	
	movlw	01h
u2285:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2285

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l1936
u2290:
	goto	l1944
	
l695:	
	line	12
	
l1944:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l696
	
l1946:	
	line	13
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	_Delay_us
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _Delay_us *****************
;; Defined at:
;;		line 127 in file "C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;  Delay           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Delay           1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_LCD_Command
;;		_LCD_Data
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Users\Siva\Documents\PIC16F877A\ADC\ADC.c"
	line	127
	global	__size_of_Delay_us
	__size_of_Delay_us	equ	__end_of_Delay_us-_Delay_us
	
_Delay_us:	
	opt	stack 6
; Regs used in _Delay_us: [wreg+status,2+status,0]
;Delay_us@Delay stored from wreg
	movwf	(Delay_us@Delay)
	line	128
	
l1930:	
;ADC.c: 128: while((--Delay)!=0);
	goto	l1932
	
l601:	
	goto	l1932
	
l600:	
	
l1932:	
	movlw	low(01h)
	subwf	(Delay_us@Delay),f
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l1932
u2240:
	goto	l603
	
l602:	
	line	129
	
l603:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_us
	__end_of_Delay_us:
;; =============== function _Delay_us ends ============

	signat	_Delay_us,4216
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
