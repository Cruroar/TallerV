opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F2553
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PORTA equ 0F80h ;# 
# 2518 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PORTB equ 0F81h ;# 
# 2627 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PORTC equ 0F82h ;# 
# 2771 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PORTE equ 0F84h ;# 
# 2809 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
LATA equ 0F89h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
LATB equ 0F8Ah ;# 
# 3058 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
LATC equ 0F8Bh ;# 
# 3146 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TRISA equ 0F92h ;# 
# 3151 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
DDRA equ 0F92h ;# 
# 3343 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TRISB equ 0F93h ;# 
# 3348 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
DDRB equ 0F93h ;# 
# 3564 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TRISC equ 0F94h ;# 
# 3569 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
DDRC equ 0F94h ;# 
# 3717 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
OSCTUNE equ 0F9Bh ;# 
# 3775 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PIE1 equ 0F9Dh ;# 
# 3848 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PIR1 equ 0F9Eh ;# 
# 3921 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
IPR1 equ 0F9Fh ;# 
# 3994 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PIE2 equ 0FA0h ;# 
# 4064 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PIR2 equ 0FA1h ;# 
# 4134 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
IPR2 equ 0FA2h ;# 
# 4204 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
EECON1 equ 0FA6h ;# 
# 4269 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
EECON2 equ 0FA7h ;# 
# 4275 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
EEDATA equ 0FA8h ;# 
# 4281 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
EEADR equ 0FA9h ;# 
# 4287 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
RCSTA equ 0FABh ;# 
# 4292 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
RCSTA1 equ 0FABh ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TXSTA equ 0FACh ;# 
# 4501 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TXSTA1 equ 0FACh ;# 
# 4793 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TXREG equ 0FADh ;# 
# 4798 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TXREG1 equ 0FADh ;# 
# 4804 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
RCREG equ 0FAEh ;# 
# 4809 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
RCREG1 equ 0FAEh ;# 
# 4815 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SPBRG equ 0FAFh ;# 
# 4820 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SPBRG1 equ 0FAFh ;# 
# 4826 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SPBRGH equ 0FB0h ;# 
# 4832 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
T3CON equ 0FB1h ;# 
# 4954 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR3 equ 0FB2h ;# 
# 4960 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR3L equ 0FB2h ;# 
# 4966 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR3H equ 0FB3h ;# 
# 4972 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CMCON equ 0FB4h ;# 
# 5067 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CVRCON equ 0FB5h ;# 
# 5151 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ECCP1AS equ 0FB6h ;# 
# 5156 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCP1AS equ 0FB6h ;# 
# 5280 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ECCP1DEL equ 0FB7h ;# 
# 5285 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCP1DEL equ 0FB7h ;# 
# 5319 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
BAUDCON equ 0FB8h ;# 
# 5324 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
BAUDCTL equ 0FB8h ;# 
# 5498 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCP2CON equ 0FBAh ;# 
# 5561 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCPR2 equ 0FBBh ;# 
# 5567 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCPR2L equ 0FBBh ;# 
# 5573 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCPR2H equ 0FBCh ;# 
# 5579 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCP1CON equ 0FBDh ;# 
# 5642 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCPR1 equ 0FBEh ;# 
# 5648 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCPR1L equ 0FBEh ;# 
# 5654 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
CCPR1H equ 0FBFh ;# 
# 5660 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ADCON2 equ 0FC0h ;# 
# 5730 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ADCON1 equ 0FC1h ;# 
# 5820 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ADCON0 equ 0FC2h ;# 
# 5938 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ADRES equ 0FC3h ;# 
# 5944 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ADRESL equ 0FC3h ;# 
# 5950 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
ADRESH equ 0FC4h ;# 
# 5956 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SSPCON2 equ 0FC5h ;# 
# 6017 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SSPCON1 equ 0FC6h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SSPSTAT equ 0FC7h ;# 
# 6344 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SSPADD equ 0FC8h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
SSPBUF equ 0FC9h ;# 
# 6356 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
T2CON equ 0FCAh ;# 
# 6453 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PR2 equ 0FCBh ;# 
# 6458 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
MEMCON equ 0FCBh ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR2 equ 0FCCh ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
T1CON equ 0FCDh ;# 
# 6672 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR1 equ 0FCEh ;# 
# 6678 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR1L equ 0FCEh ;# 
# 6684 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR1H equ 0FCFh ;# 
# 6690 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
RCON equ 0FD0h ;# 
# 6838 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
WDTCON equ 0FD1h ;# 
# 6865 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
HLVDCON equ 0FD2h ;# 
# 6870 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
LVDCON equ 0FD2h ;# 
# 7134 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
OSCCON equ 0FD3h ;# 
# 7216 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
T0CON equ 0FD5h ;# 
# 7285 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR0 equ 0FD6h ;# 
# 7291 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR0L equ 0FD6h ;# 
# 7297 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TMR0H equ 0FD7h ;# 
# 7303 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
STATUS equ 0FD8h ;# 
# 7381 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR2 equ 0FD9h ;# 
# 7387 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR2L equ 0FD9h ;# 
# 7393 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR2H equ 0FDAh ;# 
# 7399 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PLUSW2 equ 0FDBh ;# 
# 7405 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PREINC2 equ 0FDCh ;# 
# 7411 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
POSTDEC2 equ 0FDDh ;# 
# 7417 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
POSTINC2 equ 0FDEh ;# 
# 7423 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
INDF2 equ 0FDFh ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
BSR equ 0FE0h ;# 
# 7435 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR1 equ 0FE1h ;# 
# 7441 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR1L equ 0FE1h ;# 
# 7447 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR1H equ 0FE2h ;# 
# 7453 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PLUSW1 equ 0FE3h ;# 
# 7459 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PREINC1 equ 0FE4h ;# 
# 7465 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
POSTDEC1 equ 0FE5h ;# 
# 7471 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
POSTINC1 equ 0FE6h ;# 
# 7477 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
INDF1 equ 0FE7h ;# 
# 7483 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
WREG equ 0FE8h ;# 
# 7489 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR0 equ 0FE9h ;# 
# 7495 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR0L equ 0FE9h ;# 
# 7501 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
FSR0H equ 0FEAh ;# 
# 7507 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PLUSW0 equ 0FEBh ;# 
# 7513 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PREINC0 equ 0FECh ;# 
# 7519 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
POSTDEC0 equ 0FEDh ;# 
# 7525 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
POSTINC0 equ 0FEEh ;# 
# 7531 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
INDF0 equ 0FEFh ;# 
# 7537 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
INTCON3 equ 0FF0h ;# 
# 7628 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
INTCON2 equ 0FF1h ;# 
# 7704 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
INTCON equ 0FF2h ;# 
# 7820 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PROD equ 0FF3h ;# 
# 7826 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PRODL equ 0FF3h ;# 
# 7832 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PRODH equ 0FF4h ;# 
# 7838 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TABLAT equ 0FF5h ;# 
# 7846 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TBLPTR equ 0FF6h ;# 
# 7852 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TBLPTRL equ 0FF6h ;# 
# 7858 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TBLPTRH equ 0FF7h ;# 
# 7864 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TBLPTRU equ 0FF8h ;# 
# 7872 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PCLAT equ 0FF9h ;# 
# 7879 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PC equ 0FF9h ;# 
# 7885 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PCL equ 0FF9h ;# 
# 7891 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PCLATH equ 0FFAh ;# 
# 7897 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
PCLATU equ 0FFBh ;# 
# 7903 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
STKPTR equ 0FFCh ;# 
# 7978 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TOS equ 0FFDh ;# 
# 7984 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TOSL equ 0FFDh ;# 
# 7990 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TOSH equ 0FFEh ;# 
# 7996 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f2553.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftneg
	FNCALL	_main,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	_Det
	global	_Root
	global	_X1
	global	_X2
	global	_MaquinaEstado
	global	_V
	global	_X
	global	_errno
	global	_i
	global	_A
psect	nvCOMRAM,class=COMRAM,space=1,noexec
global __pnvCOMRAM
__pnvCOMRAM:
	global	_A
_A:
       ds      3
	global	_B
	global	_B
_B:
       ds      3
	global	_C
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_C
_C:
       ds      3
; #config settings
	file	"PracticaIV.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_Det
_Det:
       ds      3
	global	_Root
_Root:
       ds      3
	global	_X1
_X1:
       ds      3
	global	_X2
_X2:
       ds      3
	global	_MaquinaEstado
_MaquinaEstado:
       ds      2
	global	_V
_V:
       ds      2
	global	_X
_X:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_i
_i:
       ds      2
	file	"PracticaIV.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (22 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	22
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?___ftge:	; 1 bit 
?_main:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds   3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds   1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds   1
??___ftpack:	; 1 bytes @ 0x5
	ds   1
??___ftge:	; 1 bytes @ 0x6
	ds   2
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds   3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
	ds   3
??___ftmul:	; 1 bytes @ 0xE
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x11
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x12
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x15
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x16
	ds   1
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x17
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x17
	ds   3
??___ftneg:	; 1 bytes @ 0x1A
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1A
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1D
	ds   3
??___ftadd:	; 1 bytes @ 0x20
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x23
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x24
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x25
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x26
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x26
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x26
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x26
	ds   3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x29
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x29
	ds   3
??___ftdiv:	; 1 bytes @ 0x2C
??___ftsub:	; 1 bytes @ 0x2C
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x2C
	global	sqrt@a
sqrt@a:	; 3 bytes @ 0x2C
	ds   3
??_sqrt:	; 1 bytes @ 0x2F
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x2F
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x30
	ds   2
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x32
	ds   1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x33
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x34
	ds   1
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x35
	ds   3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x38
	ds   1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x39
	ds   3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x3C
	ds   3
??_main:	; 1 bytes @ 0x3F
	global	_main$568
_main$568:	; 3 bytes @ 0x3F
	ds   3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         22
;!    Persistent  9
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     66      94
;!    BANK0           160      0       3
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_sqrt
;!    _sqrt->___ftsub
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftneg
;!    ___ftmul->___ftpack
;!    ___ftneg->___ftmul
;!    ___ftdiv->___ftadd
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0   13242
;!                                             63 COMRAM     3     3      0
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___ftneg
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (1) _sqrt                                                19    16      3    6029
;!                                             44 COMRAM    19    16      3
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    2795
;!                                             38 COMRAM     6     0      6
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    2582
;!                                             26 COMRAM    12     6      6
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    2584
;!                                              8 COMRAM    15     9      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               9     3      6     222
;!                                              0 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) ___ftneg                                              3     0      3     174
;!                                             23 COMRAM     3     0      3
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             15     9      6    1850
;!                                             38 COMRAM    15     9      6
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1338
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___ftadd
;!     ___ftmul (ARG)
;!       ___ftpack
;!     ___ftneg (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!   ___ftdiv
;!     ___ftadd (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!     ___ftmul (ARG)
;!       ___ftpack
;!     ___ftneg (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!   ___ftmul
;!     ___ftpack
;!   ___ftneg
;!     ___ftmul (ARG)
;!       ___ftpack
;!   _sqrt
;!     ___ftge
;!     ___ftmul
;!       ___ftpack
;!     ___ftsub
;!       ___ftadd
;!         ___ftmul (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       3       5        1.9%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     42      5E       1       98.9%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      61      20        0.0%
;!DATA                 0      0      61       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\Users\CarlosAndrés\MPLABXProjects\PracticaIV.X\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___ftneg
;;		_sqrt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PracticaIV.X\main.c"
	line	21
global __ptext0
__ptext0:
psect	text0
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PracticaIV.X\main.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	22
;main.c: 22: Ejercicio2:
	
l27:
	line	24
	
l1228:
;main.c: 24: A = 3;
	movlw	low(float24(3.0000000000000000))
	movwf	((c:_A)),c
	movlw	high(float24(3.0000000000000000))
	movwf	((c:_A+1)),c
	movlw	low highword(float24(3.0000000000000000))
	movwf	((c:_A+2)),c

	line	25
;main.c: 25: B = 9;
	movlw	low(float24(9.0000000000000000))
	movwf	((c:_B)),c
	movlw	high(float24(9.0000000000000000))
	movwf	((c:_B+1)),c
	movlw	low highword(float24(9.0000000000000000))
	movwf	((c:_B+2)),c

	line	26
;main.c: 26: C = -84;
	movlw	low(float24(-84.000000000000000))
	movlb	0	; () banked
	movwf	((_C))&0ffh
	movlw	high(float24(-84.000000000000000))
	movlb	0	; () banked
	movwf	((_C+1))&0ffh
	movlw	low highword(float24(-84.000000000000000))
	movlb	0	; () banked
	movwf	((_C+2))&0ffh

	line	28
	
l1230:; BSR set to: 0

;main.c: 28: if (A == 0) {
	movf	((c:_A)),c,w
iorwf	((c:_A+1)),c,w
iorwf	((c:_A+2)),c,w
	btfss	status,2
	goto	u991
	goto	u990

u991:
	goto	l1236
u990:
	goto	l29
	line	29
	
l1232:; BSR set to: 0

;main.c: 29: return;
	goto	l29
	line	30
	
l1234:; BSR set to: 0

;main.c: 30: } else {
	goto	l1246
	
l28:; BSR set to: 0

	line	32
	
l1236:; BSR set to: 0

;main.c: 32: Det = B * B - 4 * A * C;
	movff	(_C),(c:___ftmul@f2)
	movff	(_C+1),(c:___ftmul@f2+1)
	movff	(_C+2),(c:___ftmul@f2+2)
	movff	(c:_A),(c:___ftmul@f1)
	movff	(c:_A+1),(c:___ftmul@f1+1)
	movff	(c:_A+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_main$568)
	movff	1+?___ftmul,(c:_main$568+1)
	movff	2+?___ftmul,(c:_main$568+2)
;main.c: 32: Det = B * B - 4 * A * C;
	movff	(c:_B),(c:___ftmul@f2)
	movff	(c:_B+1),(c:___ftmul@f2+1)
	movff	(c:_B+2),(c:___ftmul@f2+2)
	movff	(c:_B),(c:___ftmul@f1)
	movff	(c:_B+1),(c:___ftmul@f1+1)
	movff	(c:_B+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	low(float24(4.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(4.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(4.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(c:_main$568),(c:___ftmul@f1)
	movff	(c:_main$568+1),(c:___ftmul@f1+1)
	movff	(c:_main$568+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftneg@f1)
	movff	1+?___ftmul,(c:___ftneg@f1+1)
	movff	2+?___ftmul,(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f2)
	movff	1+?___ftneg,(c:___ftadd@f2+1)
	movff	2+?___ftneg,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_Det)
	movff	1+?___ftadd,(c:_Det+1)
	movff	2+?___ftadd,(c:_Det+2)
	line	33
	
l1238:
;main.c: 33: if (Det < 0) {
	btfsc	((c:_Det+2)),c,7
	goto	u1000
	goto	u1001

u1001:
	goto	l1244
u1000:
	goto	l29
	line	38
	
l1240:
;main.c: 38: return;
	goto	l29
	line	39
	
l1242:
;main.c: 39: } else {
	goto	l1246
	
l31:
	line	44
	
l1244:
;main.c: 44: Root = sqrt(Det);
	movff	(c:_Det),(c:sqrt@a)
	movff	(c:_Det+1),(c:sqrt@a+1)
	movff	(c:_Det+2),(c:sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:_Root)
	movff	1+?_sqrt,(c:_Root+1)
	movff	2+?_sqrt,(c:_Root+2)
	line	45
;main.c: 45: X1 = (-B + Root) / (2 * A);
	movff	(c:_Root),(c:___ftadd@f2)
	movff	(c:_Root+1),(c:___ftadd@f2+1)
	movff	(c:_Root+2),(c:___ftadd@f2+2)
	movff	(c:_B),(c:___ftneg@f1)
	movff	(c:_B+1),(c:___ftneg@f1+1)
	movff	(c:_B+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:___ftdiv@f1)
	movff	1+?___ftadd,(c:___ftdiv@f1+1)
	movff	2+?___ftadd,(c:___ftdiv@f1+2)
	movlw	low(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(c:_A),(c:___ftmul@f1)
	movff	(c:_A+1),(c:___ftmul@f1+1)
	movff	(c:_A+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f2)
	movff	1+?___ftmul,(c:___ftdiv@f2+1)
	movff	2+?___ftmul,(c:___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:_X1)
	movff	1+?___ftdiv,(c:_X1+1)
	movff	2+?___ftdiv,(c:_X1+2)
	line	46
;main.c: 46: X2 = (-B - Root) / (2 * A);
	movff	(c:_Root),(c:___ftadd@f2)
	movff	(c:_Root+1),(c:___ftadd@f2+1)
	movff	(c:_Root+2),(c:___ftadd@f2+2)
	movff	(c:_B),(c:___ftadd@f1)
	movff	(c:_B+1),(c:___ftadd@f1+1)
	movff	(c:_B+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:___ftneg@f1)
	movff	1+?___ftadd,(c:___ftneg@f1+1)
	movff	2+?___ftadd,(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftdiv@f1)
	movff	1+?___ftneg,(c:___ftdiv@f1+1)
	movff	2+?___ftneg,(c:___ftdiv@f1+2)
	movlw	low(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(c:_A),(c:___ftmul@f1)
	movff	(c:_A+1),(c:___ftmul@f1+1)
	movff	(c:_A+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f2)
	movff	1+?___ftmul,(c:___ftdiv@f2+1)
	movff	2+?___ftmul,(c:___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:_X2)
	movff	1+?___ftdiv,(c:_X2+1)
	movff	2+?___ftdiv,(c:_X2+2)
	goto	l1246
	line	47
	
l32:
	goto	l1246
	line	48
	
l30:
	goto	l1246
	line	49
;main.c: 47: }
;main.c: 48: }
;main.c: 49: Ejercicio3:
	
l33:
	line	51
	
l1246:
;main.c: 51: V = 160;
	movlw	high(0A0h)
	movwf	((c:_V+1)),c
	movlw	low(0A0h)
	movwf	((c:_V)),c
	line	52
	
l1248:
;main.c: 52: i = 0;
	movlw	high(0)
	movwf	((c:_i+1)),c
	movlw	low(0)
	movwf	((c:_i)),c
	line	54
;main.c: 54: while (V >= 3) {
	goto	l1258
	
l35:
	line	55
	
l1250:
;main.c: 55: V -= 3;
	movlw	low(-3)
	addwf	((c:_V)),c
	movlw	high(-3)
	addwfc	((c:_V+1)),c
	line	56
	
l1252:
;main.c: 56: i++;
	infsnz	((c:_i)),c
	incf	((c:_i+1)),c
	line	57
	
l1254:
;main.c: 57: if (i == 50) {
		movlw	50
	xorwf	((c:_i)),c,w
iorwf	((c:_i+1)),c,w
	btfss	status,2
	goto	u1011
	goto	u1010

u1011:
	goto	l1258
u1010:
	goto	l1260
	line	58
	
l1256:
;main.c: 58: break;
	goto	l1260
	line	59
	
l36:
	goto	l1258
	line	60
	
l34:
	line	54
	
l1258:
	btfsc	((c:_V+1)),c,7
	goto	u1020
	movf	((c:_V+1)),c,w
	bnz	u1021
	movlw	3
	subwf	 ((c:_V)),c,w
	btfsc	status,0
	goto	u1021
	goto	u1020

u1021:
	goto	l1250
u1020:
	goto	l1260
	
l37:
	goto	l1260
	line	61
;main.c: 59: }
;main.c: 60: }
;main.c: 61: Ejercicio4:
	
l38:
	line	63
	
l1260:
;main.c: 63: MaquinaEstado = 0b0000;
	movlw	high(0)
	movwf	((c:_MaquinaEstado+1)),c
	movlw	low(0)
	movwf	((c:_MaquinaEstado)),c
	line	64
;main.c: 64: X = 0b0000;
	movlw	high(0)
	movwf	((c:_X+1)),c
	movlw	low(0)
	movwf	((c:_X)),c
	line	65
;main.c: 65: while (1) {
	
l39:
	line	67
	
l40:
	line	65
	goto	l39
	
l41:
	line	70
;main.c: 67: }
;main.c: 69: return;
	
l29:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 9 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\sprcsqrt.c"
;; Parameters:    Size  Location     Type
;;  a               3   44[COMRAM] void 
;; Auto vars:     Size  Location     Type
;;  x               3   60[COMRAM] void 
;;  q               3   57[COMRAM] void 
;;  z               3   53[COMRAM] void 
;;  og              3   50[COMRAM] void 
;;  i               1   56[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        19       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\sprcsqrt.c"
	line	9
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\sprcsqrt.c"
	line	9
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:
;incstack = 0
	opt	stack 27
	line	138
	
l1144:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:sqrt@a),(c:___ftge@ff2)
	movff	(c:sqrt@a+1),(c:___ftge@ff2+1)
	movff	(c:sqrt@a+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u911
	goto	u910
u911:
	goto	l591
u910:
	line	139
	
l1146:
	btfsc	((c:sqrt@a+2)),c,7
	goto	u920
	goto	u921

u921:
	goto	l592
u920:
	line	140
	
l1148:
	movlw	high(021h)
	movwf	((c:_errno+1)),c
	movlw	low(021h)
	movwf	((c:_errno)),c
	line	141
	
l592:
	line	142
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_sqrt)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_sqrt+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_sqrt+2)),c

	goto	l593
	
l1150:
	goto	l593
	line	143
	
l591:
	line	144
	movff	(c:sqrt@a),(c:sqrt@z)
	movff	(c:sqrt@a+1),(c:sqrt@z+1)
	movff	(c:sqrt@a+2),(c:sqrt@z+2)
	line	145
	
l1152:
	movff	(c:sqrt@a),??_sqrt+0+0
	movff	(c:sqrt@a+1),??_sqrt+0+0+1
	movff	(c:sqrt@a+2),??_sqrt+0+0+2
	comf	(??_sqrt+0+0),c
	comf	(??_sqrt+0+1),c
	comf	(??_sqrt+0+2),c
	incf	(??_sqrt+0+0),c
	movlw	0
	addwfc	(??_sqrt+0+1),c
	addwfc	(??_sqrt+0+2),c

	movlw	low(0BE6EC8h)
	addwf	(??_sqrt+0+0),c,w
	movwf	((c:sqrt@x)),c
	movlw	06Eh
	addwfc	(??_sqrt+0+1),c,w
	movwf	1+((c:sqrt@x)),c
	
	movlw	0BEh
	addwfc	(??_sqrt+0+2),c,w
	movwf	2+((c:sqrt@x)),c
	line	146
	
l1154:
	bcf	status,0
	rrcf	((c:sqrt@x+2)),c
	rrcf	((c:sqrt@x+1)),c
	rrcf	((c:sqrt@x)),c
	line	147
	
l1156:
	movlw	low(08000h)
	subwf	((c:sqrt@z)),c
	movlw	high(08000h)
	subwfb	((c:sqrt@z+1)),c
	movlw	low highword(08000h)
	subwfb	((c:sqrt@z+2)),c

	line	148
	
l1158:
	movlw	low(04h)
	movwf	((c:sqrt@i)),c
	goto	l1160
	line	149
	
l594:
	line	150
	
l1160:
	movff	(c:sqrt@x),(c:sqrt@og)
	movff	(c:sqrt@x+1),(c:sqrt@og+1)
	movff	(c:sqrt@x+2),(c:sqrt@og+2)
	line	151
	
l1162:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@z),(c:___ftmul@f2)
	movff	(c:sqrt@z+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@z+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	152
	
l1164:
	movff	(c:sqrt@q),(c:___ftmul@f1)
	movff	(c:sqrt@q+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@q+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@x),(c:___ftmul@f2)
	movff	(c:sqrt@x+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	153
	
l1166:
	movff	(c:sqrt@q),(c:___ftmul@f1)
	movff	(c:sqrt@q+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@q+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@x),(c:___ftmul@f2)
	movff	(c:sqrt@x+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	154
	
l1168:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movlw	low(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@x)
	movff	1+?___ftmul,(c:sqrt@x+1)
	movff	2+?___ftmul,(c:sqrt@x+2)
	line	155
	
l1170:
	movff	(c:sqrt@x),(c:___ftsub@f1)
	movff	(c:sqrt@x+1),(c:___ftsub@f1+1)
	movff	(c:sqrt@x+2),(c:___ftsub@f1+2)
	movff	(c:sqrt@q),(c:___ftsub@f2)
	movff	(c:sqrt@q+1),(c:___ftsub@f2+1)
	movff	(c:sqrt@q+2),(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(c:sqrt@x)
	movff	1+?___ftsub,(c:sqrt@x+1)
	movff	2+?___ftsub,(c:sqrt@x+2)
	line	156
	
l1172:
	decfsz	((c:sqrt@i)),c
	
	goto	l1160
	goto	l1174
	
l595:
	line	157
	
l1174:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@a),(c:___ftmul@f2)
	movff	(c:sqrt@a+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@a+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_sqrt)
	movff	1+?___ftmul,(c:?_sqrt+1)
	movff	2+?___ftmul,(c:?_sqrt+2)
	goto	l593
	
l1176:
	line	159
	
l593:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
	signat	_sqrt,4219
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   38[COMRAM] float 
;;  f2              3   41[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   38[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftsub.c"
	line	20
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 27
	line	23
	
l1118:
	movf	((c:___ftsub@f2)),c,w
iorwf	((c:___ftsub@f2+1)),c,w
iorwf	((c:___ftsub@f2+2)),c,w
	btfsc	status,2
	goto	u871
	goto	u870

u871:
	goto	l1122
u870:
	line	24
	
l1120:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	goto	l1122
	line	25
	
l352:
	line	26
	
l1122:
	movff	(c:___ftsub@f1),(c:___ftadd@f1)
	movff	(c:___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(c:___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(c:___ftsub@f2),(c:___ftadd@f2)
	movff	(c:___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(c:___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?___ftsub)
	movff	1+?___ftadd,(c:?___ftsub+1)
	movff	2+?___ftadd,(c:?___ftsub+2)
	goto	l353
	
l1124:
	line	27
	
l353:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   37[COMRAM] unsigned char 
;;  exp2            1   36[COMRAM] unsigned char 
;;  sign            1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftadd.c"
	line	86
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 27
	line	90
	
l1000:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u601
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u601:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u611
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u611:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l1002:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u621
	goto	u620
u621:
	goto	l289
u620:
	
l1004:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u631
	goto	u630

u631:
	goto	l1008
u630:
	
l1006:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u641
	goto	u640

u641:
	goto	l1008
u640:
	
l289:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l290
	
l287:
	line	94
	
l1008:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u651
	goto	u650
u651:
	goto	l293
u650:
	
l1010:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u661
	goto	u660

u661:
	goto	l1014
u660:
	
l1012:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u671
	goto	u670

u671:
	goto	l1014
u670:
	
l293:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l290
	
l291:
	line	96
	
l1014:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l1016:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u681
	goto	u680
u681:
	goto	l1020
u680:
	line	98
	
l1018:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l1020
	
l294:
	line	99
	
l1020:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u691
	goto	u690
u691:
	goto	l295
u690:
	line	100
	
l1022:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l295:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l1024:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l1026:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l1028:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u701
	goto	u700

u701:
	goto	l1040
u700:
	goto	l1030
	line	109
	
l297:
	line	110
	
l1030:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l1032:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u711
	goto	u710

u711:
	goto	l1038
u710:
	
l1034:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u721
	goto	u720
u721:
	goto	l1030
u720:
	goto	l1038
	
l299:
	goto	l1038
	
l300:
	line	113
	goto	l1038
	
l302:
	line	114
	
l1036:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l1038
	line	116
	
l301:
	line	113
	
l1038:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u731
	goto	u730

u731:
	goto	l1036
u730:
	goto	l304
	
l303:
	line	117
	goto	l304
	
l296:
	
l1040:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u741
	goto	u740

u741:
	goto	l304
u740:
	goto	l1042
	line	120
	
l306:
	line	121
	
l1042:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l1044:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u751
	goto	u750

u751:
	goto	l1050
u750:
	
l1046:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u761
	goto	u760
u761:
	goto	l1042
u760:
	goto	l1050
	
l308:
	goto	l1050
	
l309:
	line	124
	goto	l1050
	
l311:
	line	125
	
l1048:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l1050
	line	127
	
l310:
	line	124
	
l1050:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u771
	goto	u770

u771:
	goto	l1048
u770:
	goto	l304
	
l312:
	goto	l304
	line	128
	
l305:
	line	129
	
l304:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u781
	goto	u780
u781:
	goto	l313
u780:
	line	131
	
l1052:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l313:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u791
	goto	u790
u791:
	goto	l1056
u790:
	line	136
	
l1054:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l1056
	line	138
	
l314:
	line	139
	
l1056:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l1058:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l1060:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u801
	goto	u800
u801:
	goto	l1066
u800:
	line	142
	
l1062:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l1064:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l1066
	line	145
	
l315:
	line	146
	
l1066:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l290
	
l1068:
	line	148
	
l290:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMRAM] float 
;;  f2              3   11[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   18[COMRAM] unsigned um
;;  sign            1   22[COMRAM] unsigned char 
;;  cntr            1   21[COMRAM] unsigned char 
;;  exp             1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftmul.c"
	line	62
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 28
	line	67
	
l1070:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u811
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u811:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u821
	goto	u820
u821:
	goto	l1076
u820:
	line	68
	
l1072:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l336
	
l1074:
	goto	l336
	
l335:
	line	69
	
l1076:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u831
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u831:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u841
	goto	u840
u841:
	goto	l1082
u840:
	line	70
	
l1078:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l336
	
l1080:
	goto	l336
	
l337:
	line	71
	
l1082:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l1084:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l1086:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l1088:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l1090:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l1092:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l1094:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1096
	line	135
	
l338:
	line	136
	
l1096:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u851
	goto	u850
u851:
	goto	l1100
u850:
	line	137
	
l1098:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1100
	
l339:
	line	138
	
l1100:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	140
	
l1102:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1096
	goto	l1104
	
l340:
	line	143
	
l1104:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1106
	line	144
	
l341:
	line	145
	
l1106:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u861
	goto	u860
u861:
	goto	l1110
u860:
	line	146
	
l1108:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1110
	
l342:
	line	147
	
l1110:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	149
	
l1112:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1106
	goto	l1114
	
l343:
	line	156
	
l1114:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l336
	
l1116:
	line	157
	
l336:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMRAM] float 
;;  ff2             3    3[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftge.c"
	line	4
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 29
	line	6
	
l1126:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u881
	goto	u880
u881:
	goto	l1130
u880:
	line	7
	
l1128:
	movff	(c:___ftge@ff1),??___ftge+0+0
	movff	(c:___ftge@ff1+1),??___ftge+0+0+1
	movff	(c:___ftge@ff1+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	goto	l1130
	
l328:
	line	8
	
l1130:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u891
	goto	u890
u891:
	goto	l1134
u890:
	line	9
	
l1132:
	movff	(c:___ftge@ff2),??___ftge+0+0
	movff	(c:___ftge@ff2+1),??___ftge+0+0+1
	movff	(c:___ftge@ff2+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	goto	l1134
	
l329:
	line	10
	
l1134:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l1136:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
		movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u901
	goto	u900

u901:
	goto	l1140
u900:
	
l1138:
	bcf	status,0
	goto	l330
	
l960:
	
l1140:
	bsf	status,0
	goto	l330
	
l962:
	goto	l330
	
l1142:
	line	13
	
l330:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftneg.c"
	line	15
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 30
	line	17
	
l1224:
	movf	((c:___ftneg@f1)),c,w
iorwf	((c:___ftneg@f1+1)),c,w
iorwf	((c:___ftneg@f1+2)),c,w
	btfsc	status,2
	goto	u981
	goto	u980

u981:
	goto	l346
u980:
	line	18
	
l1226:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l346:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l347:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   38[COMRAM] float 
;;  f2              3   41[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   48[COMRAM] float 
;;  sign            1   52[COMRAM] unsigned char 
;;  exp             1   51[COMRAM] unsigned char 
;;  cntr            1   47[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   38[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftdiv.c"
	line	54
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftdiv.c"
	line	54
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 29
	line	63
	
l1178:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f1+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u931
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u931:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@exp)),c
	movf	((c:___ftdiv@exp)),c,w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l1184
u940:
	line	64
	
l1180:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l321
	
l1182:
	goto	l321
	
l320:
	line	65
	
l1184:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f2+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u951
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u951:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@sign)),c
	movf	((c:___ftdiv@sign)),c,w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l1190
u960:
	line	66
	
l1186:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l321
	
l1188:
	goto	l321
	
l322:
	line	67
	
l1190:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	68
	
l1192:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	69
	
l1194:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	70
	
l1196:
	movf	(0+2+(c:___ftdiv@f2)),c,w
	xorwf	((c:___ftdiv@sign)),c
	line	71
	
l1198:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	72
	
l1200:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	73
	
l1202:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	74
	
l1204:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	75
	
l1206:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	76
	
l1208:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	goto	l1210
	line	77
	
l323:
	line	78
	
l1210:
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	79
	
l1212:
		movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u971
	goto	u970

u971:
	goto	l324
u970:
	line	80
	
l1214:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	81
	
l1216:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	82
	
l324:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	84
	
l1218:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l1210
	goto	l1220
	
l325:
	line	85
	
l1220:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	goto	l321
	
l1222:
	line	86
	
l321:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\float.c"
	line	62
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 27
	line	64
	
l964:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u521
	goto	u520
u521:
	goto	l968
u520:
	
l966:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u531
	goto	u530

u531:
	goto	l974
u530:
	goto	l968
	
l254:
	line	65
	
l968:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l255
	
l970:
	goto	l255
	
l252:
	line	66
	goto	l974
	
l257:
	line	67
	
l972:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l974
	line	69
	
l256:
	line	66
	
l974:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u541
	goto	u540

u541:
	goto	l972
u540:
	goto	l980
	
l258:
	line	70
	goto	l980
	
l260:
	line	71
	
l976:
	incf	((c:___ftpack@exp)),c
	line	72
	
l978:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l980
	line	74
	
l259:
	line	70
	
l980:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u551
	goto	u550

u551:
	goto	l976
u550:
	goto	l984
	
l261:
	line	75
	goto	l984
	
l263:
	line	76
	
l982:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l984
	line	78
	
l262:
	line	75
	
l984:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u561
	goto	u560
u561:
	goto	l266
u560:
	
l986:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u571
	goto	u570

u571:
	goto	l982
u570:
	goto	l266
	
l265:
	
l266:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u581
	goto	u580
u581:
	goto	l990
u580:
	line	80
	
l988:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l990
	
l267:
	line	81
	
l990:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l992:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u591
	goto	u590
u591:
	goto	l996
u590:
	line	84
	
l994:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l996
	
l268:
	line	85
	
l996:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l255
	
l998:
	line	86
	
l255:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
