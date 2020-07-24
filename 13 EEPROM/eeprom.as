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
	FNCALL	_main,_USART_Init
	FNCALL	_main,_EEPROM_WriteString
	FNCALL	_main,_EEPROM_Read
	FNCALL	_main,_USART_TransmitChar
	FNCALL	_USART_Init,___awtoft
	FNCALL	_USART_Init,___ftdiv
	FNCALL	_USART_Init,___ftadd
	FNCALL	_USART_Init,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_EEPROM_WriteString,_EEPROM_Write
	FNROOT	_main
	global	_RCREG
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_EEIF
_EEIF	set	108
	global	_GIE
_GIE	set	95
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
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
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	87	;'W'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	115	;'s'
	retlw	0
psect	strings
	file	"eeprom.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_USART_TransmitChar
?_USART_TransmitChar:	; 0 bytes @ 0x0
	global	??_USART_TransmitChar
??_USART_TransmitChar:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_EEPROM_Write
?_EEPROM_Write:	; 0 bytes @ 0x0
	global	?_EEPROM_Read
?_EEPROM_Read:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	USART_TransmitChar@out
USART_TransmitChar@out:	; 1 bytes @ 0x0
	global	EEPROM_Write@address
EEPROM_Write@address:	; 2 bytes @ 0x0
	global	EEPROM_Read@address
EEPROM_Read@address:	; 2 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_EEPROM_Read
??_EEPROM_Read:	; 0 bytes @ 0x2
	global	EEPROM_Write@data
EEPROM_Write@data:	; 1 bytes @ 0x2
	ds	1
	global	?_EEPROM_WriteString
?_EEPROM_WriteString:	; 0 bytes @ 0x3
	global	??_EEPROM_Write
??_EEPROM_Write:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	EEPROM_WriteString@address
EEPROM_WriteString@address:	; 2 bytes @ 0x3
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	EEPROM_WriteString@data
EEPROM_WriteString@data:	; 1 bytes @ 0x5
	ds	1
	global	??_EEPROM_WriteString
??_EEPROM_WriteString:	; 0 bytes @ 0x6
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	??_USART_Init
??_USART_Init:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x6
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x10
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x13
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x16
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1A
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1C
	ds	1
	global	?_USART_Init
?_USART_Init:	; 0 bytes @ 0x1D
	global	USART_Init@baud_rate
USART_Init@baud_rate:	; 2 bytes @ 0x1D
	ds	2
	global	USART_Init@temp
USART_Init@temp:	; 3 bytes @ 0x1F
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x22
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x23
	ds	2
	global	main@Data_read
main@Data_read:	; 1 bytes @ 0x25
	ds	1
;;Data sizes: Strings 16, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     38      38
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> USART_Init@baud_rate(BANK0[2]), 
;;
;; ?___fttol	long  size(1) Largest target is 2
;;		 -> USART_Init@baud_rate(BANK0[2]), 
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> USART_Init@baud_rate(BANK0[2]), 
;;
;; EEPROM_WriteString@data	PTR unsigned char  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _USART_Init->___awtoft
;;   _USART_Init->___fttol
;;   ___awtoft->___ftpack
;;   ___ftdiv->___awtoft
;;   ___ftadd->___awtoft
;;   _EEPROM_WriteString->_EEPROM_Write
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_USART_Init
;;   _USART_Init->___ftadd
;;   ___ftadd->___ftdiv
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0    2360
;;                                             34 BANK0      4     4      0
;;                         _USART_Init
;;                 _EEPROM_WriteString
;;                        _EEPROM_Read
;;                 _USART_TransmitChar
;; ---------------------------------------------------------------------------------
;; (1) _USART_Init                                           5     3      2    2135
;;                                             29 BANK0      5     3      2
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___ftadd
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                              8 COMMON     6     3      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                              0 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1049
;;                                             16 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_WriteString                                   4     1      3     112
;;                                              3 COMMON     4     1      3
;;                       _EEPROM_Write
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              0 COMMON    14    10      4
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) _EEPROM_Write                                         3     0      3      44
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (1) _USART_TransmitChar                                   1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _EEPROM_Read                                          2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _USART_Init
;;     ___awtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___ftadd
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;     ___fttol
;;   _EEPROM_WriteString
;;     _EEPROM_Write
;;   _EEPROM_Read
;;   _USART_TransmitChar
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     26      26       5       47.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   35[BANK0 ] int 
;;  Data_read       1   37[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USART_Init
;;		_EEPROM_WriteString
;;		_EEPROM_Read
;;		_USART_TransmitChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l2301:	
;eeprom.c: 21: int i;
;eeprom.c: 22: i=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	line	25
	
l2303:	
;eeprom.c: 23: char Data_read;
;eeprom.c: 25: USART_Init(9600);
	movlw	low(02580h)
	movwf	(?_USART_Init)
	movlw	high(02580h)
	movwf	((?_USART_Init))+1
	fcall	_USART_Init
	line	27
	
l2305:	
;eeprom.c: 27: EEPROM_WriteString(0,"electronicWings");
	movlw	low(0)
	movwf	(?_EEPROM_WriteString)
	movlw	high(0)
	movwf	((?_EEPROM_WriteString))+1
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_EEPROM_WriteString)+02h
	fcall	_EEPROM_WriteString
	line	30
;eeprom.c: 30: while(Data_read!=0xff)
	goto	l2311
	
l568:	
	line	32
	
l2307:	
;eeprom.c: 31: {
;eeprom.c: 32: Data_read=EEPROM_Read(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	(?_EEPROM_Read+1)
	addwf	(?_EEPROM_Read+1)
	movf	(main@i),w
	clrf	(?_EEPROM_Read)
	addwf	(?_EEPROM_Read)

	fcall	_EEPROM_Read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@Data_read)
	line	33
;eeprom.c: 33: USART_TransmitChar(Data_read);
	movf	(main@Data_read),w
	fcall	_USART_TransmitChar
	line	34
	
l2309:	
;eeprom.c: 34: i++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2311
	line	35
	
l567:	
	line	30
	
l2311:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Data_read),w
	xorlw	0FFh
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l2307
u3040:
	goto	l571
	
l569:	
	goto	l571
	line	37
;eeprom.c: 35: }
;eeprom.c: 37: while(1);
	
l570:	
	
l571:	
	goto	l571
	
l572:	
	line	39
	
l573:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_USART_Init
psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 43 in file "C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  baud_rate       2   29[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  temp            3   31[BANK0 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftadd
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text264
	file	"C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
	line	43
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
	opt	stack 5
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l2293:	
;eeprom.c: 44: float temp;
;eeprom.c: 45: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	46
;eeprom.c: 46: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	47
	
l2295:	
;eeprom.c: 47: temp=(((float)(8000000/64)/(float)baud_rate)-1);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0xbf
	movwf	(?___ftadd+2)
	movf	(USART_Init@baud_rate+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(USART_Init@baud_rate),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftdiv+2)
	movlw	0x24
	movwf	0+(?___ftdiv)+03h
	movlw	0xf4
	movwf	1+(?___ftdiv)+03h
	movlw	0x47
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(USART_Init@temp)
	movf	(1+(?___ftadd)),w
	movwf	(USART_Init@temp+1)
	movf	(2+(?___ftadd)),w
	movwf	(USART_Init@temp+2)
	line	48
;eeprom.c: 48: SPBRG=(int)temp;
	movf	(USART_Init@temp),w
	movwf	(?___fttol)
	movf	(USART_Init@temp+1),w
	movwf	(?___fttol+1)
	movf	(USART_Init@temp+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	49
	
l2297:	
;eeprom.c: 49: TXSTA=0x20;
	movlw	(020h)
	movwf	(152)^080h	;volatile
	line	50
	
l2299:	
;eeprom.c: 50: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	51
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_USART_Init
	__end_of_USART_Init:
;; =============== function _USART_Init ends ============

	signat	_USART_Init,4216
	global	___awtoft
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text265
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2283:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awtoft@sign)
	line	37
	
l2285:	
	btfss	(___awtoft@c+1),7
	goto	u3031
	goto	u3030
u3031:
	goto	l2289
u3030:
	line	38
	
l2287:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l2289
	line	40
	
l765:	
	line	41
	
l2289:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l766
	
l2291:	
	line	42
	
l766:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftdiv
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text266
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2241:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l2247
u2950:
	line	56
	
l2243:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l718
	
l2245:	
	goto	l718
	
l717:	
	line	57
	
l2247:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l2253
u2960:
	line	58
	
l2249:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l718
	
l2251:	
	goto	l718
	
l719:	
	line	59
	
l2253:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2255:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2257:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2975:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2970:
	addlw	-1
	skipz
	goto	u2975
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2259:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2985:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2980:
	addlw	-1
	skipz
	goto	u2985
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2261:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2263:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2265:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l2267
	line	69
	
l720:	
	line	70
	
l2267:	
	movlw	01h
u2995:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2995
	line	71
	
l2269:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3005
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3005
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3005:
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l2275
u3000:
	line	72
	
l2271:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2273:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2275
	line	74
	
l721:	
	line	75
	
l2275:	
	movlw	01h
u3015:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3015
	line	76
	
l2277:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2267
u3020:
	goto	l2279
	
l722:	
	line	77
	
l2279:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l718
	
l2281:	
	line	78
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   28[BANK0 ] unsigned char 
;;  exp2            1   27[BANK0 ] unsigned char 
;;  sign            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_USART_Init
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text267
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2169:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l2171:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2710
	goto	l2177
u2710:
	
l2173:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l2181
u2720:
	
l2175:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2181
u2730:
	goto	l2177
	
l675:	
	line	93
	
l2177:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l676
	
l2179:	
	goto	l676
	
l673:	
	line	94
	
l2181:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2740
	goto	l679
u2740:
	
l2183:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l2187
u2750:
	
l2185:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l2187
u2760:
	
l679:	
	line	95
	goto	l676
	
l677:	
	line	96
	
l2187:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2189:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l680
u2770:
	line	98
	
l2191:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l680:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l681
u2780:
	line	100
	
l2193:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l681:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2195:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2197:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l2209
u2790:
	goto	l2199
	line	109
	
l683:	
	line	110
	
l2199:	
	movlw	01h
u2805:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2805
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2201:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l2207
u2810:
	
l2203:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2199
u2820:
	goto	l2207
	
l685:	
	goto	l2207
	
l686:	
	line	113
	goto	l2207
	
l688:	
	line	114
	
l2205:	
	movlw	01h
u2835:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2835

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2207
	line	116
	
l687:	
	line	113
	
l2207:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2205
u2840:
	goto	l690
	
l689:	
	line	117
	goto	l690
	
l682:	
	
l2209:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2851
	goto	u2850
u2851:
	goto	l690
u2850:
	goto	l2211
	line	120
	
l692:	
	line	121
	
l2211:	
	movlw	01h
u2865:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2865
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2213:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l2219
u2870:
	
l2215:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2211
u2880:
	goto	l2219
	
l694:	
	goto	l2219
	
l695:	
	line	124
	goto	l2219
	
l697:	
	line	125
	
l2217:	
	movlw	01h
u2895:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2895

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2219
	line	127
	
l696:	
	line	124
	
l2219:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l2217
u2900:
	goto	l690
	
l698:	
	goto	l690
	line	128
	
l691:	
	line	129
	
l690:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l2223
u2910:
	line	131
	
l2221:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l2223
	line	133
	
l699:	
	line	134
	
l2223:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l2227
u2920:
	line	136
	
l2225:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l2227
	line	138
	
l700:	
	line	139
	
l2227:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l2229:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2931
	addwf	(___ftadd@f2+1),f
u2931:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2932
	addwf	(___ftadd@f2+2),f
u2932:

	line	141
	
l2231:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l2237
u2940:
	line	142
	
l2233:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l2235:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l2237
	line	145
	
l701:	
	line	146
	
l2237:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l676
	
l2239:	
	line	148
	
l676:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_EEPROM_WriteString
psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:

;; *************** function _EEPROM_WriteString *****************
;; Defined at:
;;		line 112 in file "C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         2    3[COMMON] int 
;;  data            1    5[COMMON] PTR unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_EEPROM_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text268
	file	"C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
	line	112
	global	__size_of_EEPROM_WriteString
	__size_of_EEPROM_WriteString	equ	__end_of_EEPROM_WriteString-_EEPROM_WriteString
	
_EEPROM_WriteString:	
	opt	stack 6
; Regs used in _EEPROM_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	114
	
l2159:	
;eeprom.c: 114: while(*data!=0)
	goto	l2167
	
l615:	
	line	116
	
l2161:	
;eeprom.c: 115: {
;eeprom.c: 116: EEPROM_Write(address,*data);
	movf	(EEPROM_WriteString@address+1),w
	clrf	(?_EEPROM_Write+1)
	addwf	(?_EEPROM_Write+1)
	movf	(EEPROM_WriteString@address),w
	clrf	(?_EEPROM_Write)
	addwf	(?_EEPROM_Write)

	movf	(EEPROM_WriteString@data),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_EEPROM_WriteString+0)+0
	movf	(??_EEPROM_WriteString+0)+0,w
	movwf	0+(?_EEPROM_Write)+02h
	fcall	_EEPROM_Write
	line	117
	
l2163:	
;eeprom.c: 117: address++;
	movlw	low(01h)
	addwf	(EEPROM_WriteString@address),f
	skipnc
	incf	(EEPROM_WriteString@address+1),f
	movlw	high(01h)
	addwf	(EEPROM_WriteString@address+1),f
	line	118
	
l2165:	
;eeprom.c: 118: *data++;
	movlw	(01h)
	movwf	(??_EEPROM_WriteString+0)+0
	movf	(??_EEPROM_WriteString+0)+0,w
	addwf	(EEPROM_WriteString@data),f
	goto	l2167
	line	119
	
l614:	
	line	114
	
l2167:	
	movf	(EEPROM_WriteString@data),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2161
u2700:
	goto	l617
	
l616:	
	line	120
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_WriteString
	__end_of_EEPROM_WriteString:
;; =============== function _EEPROM_WriteString ends ============

	signat	_EEPROM_WriteString,8312
	global	___fttol
psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text269
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2053:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l2059
u2530:
	line	50
	
l2055:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l739
	
l2057:	
	goto	l739
	
l738:	
	line	51
	
l2059:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2545:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2540:
	addlw	-1
	skipz
	goto	u2545
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2061:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2063:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2065:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2067:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2069:	
	btfss	(___fttol@exp1),7
	goto	u2551
	goto	u2550
u2551:
	goto	l2079
u2550:
	line	57
	
l2071:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2561
	goto	u2560
u2561:
	goto	l2077
u2560:
	line	58
	
l2073:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l739
	
l2075:	
	goto	l739
	
l741:	
	goto	l2077
	line	59
	
l742:	
	line	60
	
l2077:	
	movlw	01h
u2575:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2575

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2077
u2580:
	goto	l2089
	
l743:	
	line	62
	goto	l2089
	
l740:	
	line	63
	
l2079:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2087
u2590:
	line	64
	
l2081:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l739
	
l2083:	
	goto	l739
	
l745:	
	line	65
	goto	l2087
	
l747:	
	line	66
	
l2085:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2605:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2605
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2087
	line	68
	
l746:	
	line	65
	
l2087:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2085
u2610:
	goto	l2089
	
l748:	
	goto	l2089
	line	69
	
l744:	
	line	70
	
l2089:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2620
	goto	l2093
u2620:
	line	71
	
l2091:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l2093
	
l749:	
	line	72
	
l2093:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l739
	
l2095:	
	line	73
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___awtoft
;;		___ftmul
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text270
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1971:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2280
	goto	l1975
u2280:
	
l1973:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l1981
u2290:
	goto	l1975
	
l963:	
	line	65
	
l1975:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l964
	
l1977:	
	goto	l964
	
l961:	
	line	66
	goto	l1981
	
l966:	
	line	67
	
l1979:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2305:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2305

	goto	l1981
	line	69
	
l965:	
	line	66
	
l1981:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l1979
u2310:
	goto	l968
	
l967:	
	line	70
	goto	l968
	
l969:	
	line	71
	
l1983:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1985:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1987:	
	movlw	01h
u2325:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2325

	line	74
	
l968:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l1983
u2330:
	goto	l1991
	
l970:	
	line	75
	goto	l1991
	
l972:	
	line	76
	
l1989:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2345:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2345
	goto	l1991
	line	78
	
l971:	
	line	75
	
l1991:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1989
u2350:
	
l973:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l974
u2360:
	line	80
	
l1993:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l974:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1995:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2375:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2370:
	addlw	-1
	skipz
	goto	u2375
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1997:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2380
	goto	l975
u2380:
	line	84
	
l1999:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l975:	
	line	85
	line	86
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_EEPROM_Write
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function _EEPROM_Write *****************
;; Defined at:
;;		line 89 in file "C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         2    0[COMMON] int 
;;  data            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EEPROM_WriteString
;; This function uses a non-reentrant model
;;
psect	text271
	file	"C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
	line	89
	global	__size_of_EEPROM_Write
	__size_of_EEPROM_Write	equ	__end_of_EEPROM_Write-_EEPROM_Write
	
_EEPROM_Write:	
	opt	stack 6
; Regs used in _EEPROM_Write: [wreg]
	line	91
	
l1959:	
;eeprom.c: 91: EEADR=address;
	movf	(EEPROM_Write@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	92
;eeprom.c: 92: EEDATA=data;
	movf	(EEPROM_Write@data),w
	movwf	(268)^0100h	;volatile
	line	93
	
l1961:	
;eeprom.c: 93: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	95
	
l1963:	
;eeprom.c: 95: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	96
	
l1965:	
;eeprom.c: 96: GIE=0;
	bcf	(95/8),(95)&7
	line	99
;eeprom.c: 99: EECON2=0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	100
;eeprom.c: 100: EECON2=0xaa;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	102
	
l1967:	
;eeprom.c: 102: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	103
	
l1969:	
;eeprom.c: 103: GIE=1;
	bsf	(95/8),(95)&7
	line	105
;eeprom.c: 105: while(EEIF==0);
	goto	l608
	
l609:	
	
l608:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(108/8),(108)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l608
u2270:
	
l610:	
	line	107
;eeprom.c: 107: EEIF=0;
	bcf	(108/8),(108)&7
	line	109
	
l611:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Write
	__end_of_EEPROM_Write:
;; =============== function _EEPROM_Write ends ============

	signat	_EEPROM_Write,8312
	global	_USART_TransmitChar
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:

;; *************** function _USART_TransmitChar *****************
;; Defined at:
;;		line 61 in file "C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  out             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  out             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;;		_USART_SendString
;; This function uses a non-reentrant model
;;
psect	text272
	file	"C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
	line	61
	global	__size_of_USART_TransmitChar
	__size_of_USART_TransmitChar	equ	__end_of_USART_TransmitChar-_USART_TransmitChar
	
_USART_TransmitChar:	
	opt	stack 7
; Regs used in _USART_TransmitChar: [wreg]
;USART_TransmitChar@out stored from wreg
	movwf	(USART_TransmitChar@out)
	line	62
	
l1947:	
;eeprom.c: 62: while(TXIF==0);
	goto	l585
	
l586:	
	
l585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l585
u2240:
	goto	l1949
	
l587:	
	line	63
	
l1949:	
;eeprom.c: 63: TXREG=out;
	movf	(USART_TransmitChar@out),w
	movwf	(25)	;volatile
	line	65
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_USART_TransmitChar
	__end_of_USART_TransmitChar:
;; =============== function _USART_TransmitChar ends ============

	signat	_USART_TransmitChar,4216
	global	_EEPROM_Read
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:

;; *************** function _EEPROM_Read *****************
;; Defined at:
;;		line 123 in file "C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text273
	file	"C:\Users\Siva\Documents\PIC16F877A\EEPROM\eeprom.c"
	line	123
	global	__size_of_EEPROM_Read
	__size_of_EEPROM_Read	equ	__end_of_EEPROM_Read-_EEPROM_Read
	
_EEPROM_Read:	
	opt	stack 7
; Regs used in _EEPROM_Read: [wreg]
	line	125
	
l1937:	
;eeprom.c: 125: EEADR=address;
	movf	(EEPROM_Read@address),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	126
	
l1939:	
;eeprom.c: 126: WREN=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7
	line	127
	
l1941:	
;eeprom.c: 127: EEPGD=0;
	bcf	(3175/8)^0180h,(3175)&7
	line	128
	
l1943:	
;eeprom.c: 128: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	129
;eeprom.c: 129: return(EEDATA);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l620
	
l1945:	
	line	130
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROM_Read
	__end_of_EEPROM_Read:
;; =============== function _EEPROM_Read ends ============

	signat	_EEPROM_Read,4217
psect	text274,local,class=CODE,delta=2
global __ptext274
__ptext274:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
