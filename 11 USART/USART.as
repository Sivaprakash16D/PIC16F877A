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
# 15 "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	dw 0x3F3A ;#
	FNCALL	_main,_Initialize_UART
	FNCALL	_main,_UART_send_string
	FNCALL	_main,_UART_get_char
	FNCALL	_main,_UART_send_char
	FNCALL	_UART_send_string,_UART_send_char
	FNROOT	_main
	global	_RCREG
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_OERR
_OERR	set	193
	global	_RB3
_RB3	set	51
	global	_RCIF
_RCIF	set	101
	global	_RX9
_RX9	set	198
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_BRGH
_BRGH	set	1218
	global	_SYNC
_SYNC	set	1220
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TX9
_TX9	set	1222
	global	_TXEN
_TXEN	set	1221
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
	retlw	85	;'U'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	62	;'>'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_3:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	62	;'>'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	file	"USART.as"
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
	global	?_Initialize_UART
?_Initialize_UART:	; 0 bytes @ 0x0
	global	??_Initialize_UART
??_Initialize_UART:	; 0 bytes @ 0x0
	global	?_UART_send_char
?_UART_send_char:	; 0 bytes @ 0x0
	global	??_UART_send_char
??_UART_send_char:	; 0 bytes @ 0x0
	global	??_UART_get_char
??_UART_get_char:	; 0 bytes @ 0x0
	global	?_UART_send_string
?_UART_send_string:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_UART_get_char
?_UART_get_char:	; 1 bytes @ 0x0
	global	UART_send_char@bt
UART_send_char@bt:	; 1 bytes @ 0x0
	ds	1
	global	??_UART_send_string
??_UART_send_string:	; 0 bytes @ 0x1
	ds	1
	global	UART_send_string@st_pt
UART_send_string@st_pt:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	2
	global	main@get_value
main@get_value:	; 2 bytes @ 0x5
	ds	2
;;Data sizes: Strings 66, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; UART_send_string@st_pt	PTR unsigned char  size(1) Largest target is 37
;;		 -> STR_3(CODE[13]), STR_2(CODE[16]), STR_1(CODE[37]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_UART_send_string
;;   _UART_send_string->_UART_send_char
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 4     4      0      90
;;                                              3 COMMON     4     4      0
;;                    _Initialize_UART
;;                   _UART_send_string
;;                      _UART_get_char
;;                     _UART_send_char
;; ---------------------------------------------------------------------------------
;; (1) _UART_send_string                                     2     2      0      45
;;                                              1 COMMON     2     2      0
;;                     _UART_send_char
;; ---------------------------------------------------------------------------------
;; (1) _UART_get_char                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _UART_send_char                                       1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Initialize_UART                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Initialize_UART
;;   _UART_send_string
;;     _UART_send_char
;;   _UART_get_char
;;   _UART_send_char
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 88 in file "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  get_value       2    5[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Initialize_UART
;;		_UART_send_string
;;		_UART_get_char
;;		_UART_send_char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	line	88
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l1783:	
;usart.c: 89: int get_value;
;usart.c: 91: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	92
	
l1785:	
;usart.c: 92: Initialize_UART();
	fcall	_Initialize_UART
	line	94
	
l1787:	
;usart.c: 94: UART_send_string("UART Module Initialized and active\r\n");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_UART_send_string
	goto	l1789
	line	96
;usart.c: 96: while(1)
	
l581:	
	line	98
	
l1789:	
;usart.c: 97: {
;usart.c: 98: get_value = UART_get_char();
	fcall	_UART_get_char
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@get_value)
	movf	1+(??_main+0)+0,w
	movwf	(main@get_value+1)
	line	100
	
l1791:	
;usart.c: 100: if (get_value == '1')
	movlw	031h
	xorwf	(main@get_value),w
	iorwf	(main@get_value+1),w
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l1799
u2180:
	line	102
	
l1793:	
;usart.c: 101: {
;usart.c: 102: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	103
	
l1795:	
;usart.c: 103: UART_send_string("RED LED -> ON\r\n");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_UART_send_string
	line	104
	
l1797:	
;usart.c: 104: UART_send_char(10);
	movlw	(0Ah)
	fcall	_UART_send_char
	goto	l1799
	line	105
	
l582:	
	line	107
	
l1799:	
;usart.c: 105: }
;usart.c: 107: if (get_value == '0')
	movlw	030h
	xorwf	(main@get_value),w
	iorwf	(main@get_value+1),w
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l1789
u2190:
	line	109
	
l1801:	
;usart.c: 108: {
;usart.c: 109: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	110
	
l1803:	
;usart.c: 110: UART_send_string("RED -> OFF\r\n");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_UART_send_string
	line	111
	
l1805:	
;usart.c: 111: UART_send_char(10);
	movlw	(0Ah)
	fcall	_UART_send_char
	goto	l1789
	line	112
	
l583:	
	goto	l1789
	line	114
	
l584:	
	line	96
	goto	l1789
	
l585:	
	line	115
	
l586:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_UART_send_string
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _UART_send_string *****************
;; Defined at:
;;		line 78 in file "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
;; Parameters:    Size  Location     Type
;;  st_pt           1    wreg     PTR unsigned char 
;;		 -> STR_3(13), STR_2(16), STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  st_pt           1    2[COMMON] PTR unsigned char 
;;		 -> STR_3(13), STR_2(16), STR_1(37), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	line	78
	global	__size_of_UART_send_string
	__size_of_UART_send_string	equ	__end_of_UART_send_string-_UART_send_string
	
_UART_send_string:	
	opt	stack 6
; Regs used in _UART_send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;UART_send_string@st_pt stored from wreg
	movwf	(UART_send_string@st_pt)
	line	79
	
l1775:	
;usart.c: 79: while(*st_pt)
	goto	l1781
	
l576:	
	line	80
	
l1777:	
;usart.c: 80: UART_send_char(*st_pt++);
	movf	(UART_send_string@st_pt),w
	movwf	fsr0
	fcall	stringdir
	fcall	_UART_send_char
	
l1779:	
	movlw	(01h)
	movwf	(??_UART_send_string+0)+0
	movf	(??_UART_send_string+0)+0,w
	addwf	(UART_send_string@st_pt),f
	goto	l1781
	
l575:	
	line	79
	
l1781:	
	movf	(UART_send_string@st_pt),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l1777
u2170:
	goto	l578
	
l577:	
	line	81
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_UART_send_string
	__end_of_UART_send_string:
;; =============== function _UART_send_string ends ============

	signat	_UART_send_string,4216
	global	_UART_get_char
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _UART_get_char *****************
;; Defined at:
;;		line 61 in file "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text92
	file	"C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	line	61
	global	__size_of_UART_get_char
	__size_of_UART_get_char	equ	__end_of_UART_get_char-_UART_get_char
	
_UART_get_char:	
	opt	stack 7
; Regs used in _UART_get_char: [wreg]
	line	62
	
l981:	
;usart.c: 62: if(OERR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(193/8),(193)&7
	goto	u21
	goto	u20
u21:
	goto	l569
u20:
	line	64
	
l983:	
;usart.c: 63: {
;usart.c: 64: CREN = 0;
	bcf	(196/8),(196)&7
	line	65
;usart.c: 65: CREN = 1;
	bsf	(196/8),(196)&7
	goto	l569
	line	66
	
l568:	
	line	68
;usart.c: 66: }
;usart.c: 68: while(!RCIF);
	goto	l569
	
l570:	
	
l569:	
	btfss	(101/8),(101)&7
	goto	u31
	goto	u30
u31:
	goto	l569
u30:
	goto	l985
	
l571:	
	line	70
	
l985:	
;usart.c: 70: return RCREG;
	movf	(26),w	;volatile
	goto	l572
	
l987:	
	line	71
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_UART_get_char
	__end_of_UART_get_char:
;; =============== function _UART_get_char ends ============

	signat	_UART_get_char,89
	global	_UART_send_char
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _UART_send_char *****************
;; Defined at:
;;		line 51 in file "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    0[COMMON] unsigned char 
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
;;		_UART_send_string
;;		_main
;; This function uses a non-reentrant model
;;
psect	text93
	file	"C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	line	51
	global	__size_of_UART_send_char
	__size_of_UART_send_char	equ	__end_of_UART_send_char-_UART_send_char
	
_UART_send_char:	
	opt	stack 7
; Regs used in _UART_send_char: [wreg]
;UART_send_char@bt stored from wreg
	movwf	(UART_send_char@bt)
	line	52
	
l977:	
;usart.c: 52: while(!TXIF);
	goto	l562
	
l563:	
	
l562:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l562
u10:
	goto	l979
	
l564:	
	line	53
	
l979:	
;usart.c: 53: TXREG = bt;
	movf	(UART_send_char@bt),w
	movwf	(25)	;volatile
	line	54
	
l565:	
	return
	opt stack 0
GLOBAL	__end_of_UART_send_char
	__end_of_UART_send_char:
;; =============== function _UART_send_char ends ============

	signat	_UART_send_char,4216
	global	_Initialize_UART
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _Initialize_UART *****************
;; Defined at:
;;		line 18 in file "C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text94
	file	"C:\Users\Siva\Documents\PIC16F877A\USART\usart.c"
	line	18
	global	__size_of_Initialize_UART
	__size_of_Initialize_UART	equ	__end_of_Initialize_UART-_Initialize_UART
	
_Initialize_UART:	
	opt	stack 7
; Regs used in _Initialize_UART: [wreg]
	line	20
	
l959:	
;usart.c: 20: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	21
;usart.c: 21: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	26
	
l961:	
;usart.c: 26: SPBRG = ((20000000/16)/9600) - 1;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	27
	
l963:	
;usart.c: 27: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	31
	
l965:	
;usart.c: 31: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	32
	
l967:	
;usart.c: 32: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	36
	
l969:	
;usart.c: 36: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	37
	
l971:	
;usart.c: 37: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	41
	
l973:	
;usart.c: 41: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7
	line	42
	
l975:	
;usart.c: 42: RX9 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7
	line	44
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_Initialize_UART
	__end_of_Initialize_UART:
;; =============== function _Initialize_UART ends ============

	signat	_Initialize_UART,88
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
