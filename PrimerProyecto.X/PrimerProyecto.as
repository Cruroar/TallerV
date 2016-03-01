opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F25K50
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
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SRCON1 equ 0F57h ;# 
# 112 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SRCON0 equ 0F58h ;# 
# 182 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPTMRS equ 0F59h ;# 
# 208 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
VREGCON equ 0F5Ah ;# 
# 227 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ANSELA equ 0F5Bh ;# 
# 271 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ANSELB equ 0F5Ch ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ANSELC equ 0F5Dh ;# 
# 353 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UCON equ 0F60h ;# 
# 403 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
USTAT equ 0F61h ;# 
# 462 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UCFG equ 0F62h ;# 
# 543 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UADDR equ 0F63h ;# 
# 606 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UIE equ 0F64h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UIR equ 0F65h ;# 
# 716 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEIE equ 0F66h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEIR equ 0F67h ;# 
# 816 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UFRM equ 0F68h ;# 
# 822 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UFRML equ 0F68h ;# 
# 899 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UFRMH equ 0F69h ;# 
# 938 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP0 equ 0F6Ah ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP1 equ 0F6Bh ;# 
# 1200 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP2 equ 0F6Ch ;# 
# 1331 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP3 equ 0F6Dh ;# 
# 1462 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP4 equ 0F6Eh ;# 
# 1593 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP5 equ 0F6Fh ;# 
# 1724 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP6 equ 0F70h ;# 
# 1855 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP7 equ 0F71h ;# 
# 1986 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP8 equ 0F72h ;# 
# 2073 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP9 equ 0F73h ;# 
# 2160 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP10 equ 0F74h ;# 
# 2247 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP11 equ 0F75h ;# 
# 2334 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP12 equ 0F76h ;# 
# 2421 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP13 equ 0F77h ;# 
# 2508 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP14 equ 0F78h ;# 
# 2595 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
UEP15 equ 0F79h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SLRCON equ 0F7Ah ;# 
# 2713 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
VREFCON2 equ 0F7Bh ;# 
# 2764 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
VREFCON1 equ 0F7Ch ;# 
# 2824 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
VREFCON0 equ 0F7Dh ;# 
# 2883 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PMD0 equ 0F7Eh ;# 
# 2967 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PMD1 equ 0F7Fh ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PORTA equ 0F80h ;# 
# 3201 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PORTB equ 0F81h ;# 
# 3310 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PORTC equ 0F82h ;# 
# 3454 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PORTE equ 0F84h ;# 
# 3492 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
WPUB equ 0F85h ;# 
# 3553 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
IOCB equ 0F86h ;# 
# 3591 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
IOCC equ 0F87h ;# 
# 3647 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CTMUICON equ 0F88h ;# 
# 3722 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
LATA equ 0F89h ;# 
# 3854 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
LATB equ 0F8Ah ;# 
# 3986 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
LATC equ 0F8Bh ;# 
# 4104 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CTMUCONL equ 0F8Eh ;# 
# 4109 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CTMUCON1 equ 0F8Eh ;# 
# 4257 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CTMUCONH equ 0F8Fh ;# 
# 4262 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CTMUCON0 equ 0F8Fh ;# 
# 4412 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPR2 equ 0F90h ;# 
# 4418 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPR2L equ 0F90h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPR2H equ 0F91h ;# 
# 4456 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TRISA equ 0F92h ;# 
# 4461 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
DDRA equ 0F92h ;# 
# 4677 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TRISB equ 0F93h ;# 
# 4682 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
DDRB equ 0F93h ;# 
# 4898 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TRISC equ 0F94h ;# 
# 4903 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
DDRC equ 0F94h ;# 
# 5075 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCP2CON equ 0F97h ;# 
# 5080 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ECCP2CON equ 0F97h ;# 
# 5230 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CM1CON0 equ 0F98h ;# 
# 5352 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CM2CON0 equ 0F99h ;# 
# 5474 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CM2CON1 equ 0F9Ah ;# 
# 5535 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
OSCTUNE equ 0F9Bh ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
HLVDCON equ 0F9Ch ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PIE1 equ 0F9Dh ;# 
# 5771 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PIR1 equ 0F9Eh ;# 
# 5869 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
IPR1 equ 0F9Fh ;# 
# 5967 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PIE2 equ 0FA0h ;# 
# 6065 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PIR2 equ 0FA1h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
IPR2 equ 0FA2h ;# 
# 6261 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PIE3 equ 0FA3h ;# 
# 6342 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PIR3 equ 0FA4h ;# 
# 6388 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
IPR3 equ 0FA5h ;# 
# 6434 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
EECON1 equ 0FA6h ;# 
# 6499 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
EECON2 equ 0FA7h ;# 
# 6518 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
EEDATA equ 0FA8h ;# 
# 6524 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
EEADR equ 0FA9h ;# 
# 6530 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
RCSTA1 equ 0FABh ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
RCSTA equ 0FABh ;# 
# 6739 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TXSTA1 equ 0FACh ;# 
# 6744 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TXSTA equ 0FACh ;# 
# 7036 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TXREG1 equ 0FADh ;# 
# 7041 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TXREG equ 0FADh ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
RCREG1 equ 0FAEh ;# 
# 7078 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
RCREG equ 0FAEh ;# 
# 7110 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SPBRG1 equ 0FAFh ;# 
# 7115 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SPBRG equ 0FAFh ;# 
# 7247 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SPBRGH1 equ 0FB0h ;# 
# 7252 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SPBRGH equ 0FB0h ;# 
# 7384 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
T3CON equ 0FB1h ;# 
# 7514 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR3 equ 0FB2h ;# 
# 7520 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR3L equ 0FB2h ;# 
# 7539 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR3H equ 0FB3h ;# 
# 7558 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
T3GCON equ 0FB4h ;# 
# 7688 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ACTCON equ 0FB5h ;# 
# 7693 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
STCON equ 0FB5h ;# 
# 7893 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ECCP1AS equ 0FB6h ;# 
# 8026 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PWM1CON equ 0FB7h ;# 
# 8031 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ECCP1DEL equ 0FB7h ;# 
# 8175 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
BAUDCON1 equ 0FB8h ;# 
# 8180 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
BAUDCON equ 0FB8h ;# 
# 8184 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
BAUDCTL equ 0FB8h ;# 
# 8753 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PSTR1CON equ 0FB9h ;# 
# 8828 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
T2CON equ 0FBAh ;# 
# 8898 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PR2 equ 0FBBh ;# 
# 8917 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR2 equ 0FBCh ;# 
# 8936 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCP1CON equ 0FBDh ;# 
# 8941 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ECCP1CON equ 0FBDh ;# 
# 9127 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPR1 equ 0FBEh ;# 
# 9133 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPR1L equ 0FBEh ;# 
# 9152 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
CCPR1H equ 0FBFh ;# 
# 9171 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ADCON2 equ 0FC0h ;# 
# 9241 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ADCON1 equ 0FC1h ;# 
# 9308 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ADCON0 equ 0FC2h ;# 
# 9402 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ADRESL equ 0FC3h ;# 
# 9408 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
ADRESH equ 0FC4h ;# 
# 9414 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1CON2 equ 0FC5h ;# 
# 9419 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPCON2 equ 0FC5h ;# 
# 9857 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1CON1 equ 0FC6h ;# 
# 9862 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPCON equ 0FC6h ;# 
# 9866 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPCON1 equ 0FC6h ;# 
# 10273 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1STAT equ 0FC7h ;# 
# 10278 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPSTAT equ 0FC7h ;# 
# 10932 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1ADD equ 0FC8h ;# 
# 10937 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPADD equ 0FC8h ;# 
# 11353 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1BUF equ 0FC9h ;# 
# 11358 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPBUF equ 0FC9h ;# 
# 11390 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1MSK equ 0FCAh ;# 
# 11395 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPMSK equ 0FCAh ;# 
# 11527 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSP1CON3 equ 0FCBh ;# 
# 11532 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
SSPCON3 equ 0FCBh ;# 
# 11648 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
T1GCON equ 0FCCh ;# 
# 11778 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
T1CON equ 0FCDh ;# 
# 11890 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR1 equ 0FCEh ;# 
# 11896 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR1L equ 0FCEh ;# 
# 11915 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR1H equ 0FCFh ;# 
# 11934 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
RCON equ 0FD0h ;# 
# 12066 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
WDTCON equ 0FD1h ;# 
# 12093 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
OSCCON2 equ 0FD2h ;# 
# 12154 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
OSCCON equ 0FD3h ;# 
# 12236 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
T0CON equ 0FD5h ;# 
# 12305 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR0 equ 0FD6h ;# 
# 12311 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR0L equ 0FD6h ;# 
# 12330 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TMR0H equ 0FD7h ;# 
# 12349 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
STATUS equ 0FD8h ;# 
# 12427 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR2 equ 0FD9h ;# 
# 12433 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR2L equ 0FD9h ;# 
# 12452 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR2H equ 0FDAh ;# 
# 12458 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PLUSW2 equ 0FDBh ;# 
# 12477 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PREINC2 equ 0FDCh ;# 
# 12496 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
POSTDEC2 equ 0FDDh ;# 
# 12515 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
POSTINC2 equ 0FDEh ;# 
# 12534 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
INDF2 equ 0FDFh ;# 
# 12553 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
BSR equ 0FE0h ;# 
# 12559 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR1 equ 0FE1h ;# 
# 12565 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR1L equ 0FE1h ;# 
# 12584 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR1H equ 0FE2h ;# 
# 12590 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PLUSW1 equ 0FE3h ;# 
# 12609 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PREINC1 equ 0FE4h ;# 
# 12628 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
POSTDEC1 equ 0FE5h ;# 
# 12647 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
POSTINC1 equ 0FE6h ;# 
# 12666 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
INDF1 equ 0FE7h ;# 
# 12685 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
WREG equ 0FE8h ;# 
# 12704 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR0 equ 0FE9h ;# 
# 12710 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR0L equ 0FE9h ;# 
# 12729 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
FSR0H equ 0FEAh ;# 
# 12735 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PLUSW0 equ 0FEBh ;# 
# 12754 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PREINC0 equ 0FECh ;# 
# 12773 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
POSTDEC0 equ 0FEDh ;# 
# 12792 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
POSTINC0 equ 0FEEh ;# 
# 12811 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
INDF0 equ 0FEFh ;# 
# 12830 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
INTCON3 equ 0FF0h ;# 
# 12921 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
INTCON2 equ 0FF1h ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
INTCON equ 0FF2h ;# 
# 13113 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PROD equ 0FF3h ;# 
# 13119 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PRODL equ 0FF3h ;# 
# 13138 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PRODH equ 0FF4h ;# 
# 13157 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TABLAT equ 0FF5h ;# 
# 13178 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TBLPTR equ 0FF6h ;# 
# 13184 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TBLPTRL equ 0FF6h ;# 
# 13203 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TBLPTRH equ 0FF7h ;# 
# 13222 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TBLPTRU equ 0FF8h ;# 
# 13230 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PCLAT equ 0FF9h ;# 
# 13237 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PC equ 0FF9h ;# 
# 13243 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PCL equ 0FF9h ;# 
# 13262 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PCLATH equ 0FFAh ;# 
# 13281 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
PCLATU equ 0FFBh ;# 
# 13287 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
STKPTR equ 0FFCh ;# 
# 13360 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TOS equ 0FFDh ;# 
# 13366 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TOSL equ 0FFDh ;# 
# 13385 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TOSH equ 0FFEh ;# 
# 13404 "C:\Program Files (x86)\Microchip\xc8\v1.36\include\pic18f25k50.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftge
	FNCALL	_main,___ftmul
	FNCALL	_main,___lbtoft
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	_Mouse
	global	_Rat
	global	_Cat
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	16

;initializer for _Mouse
;main.c: 13: int Dog = 3;
;main.c: 14: char Cat = 'a';
;main.c: 15: float Rat = 3.45;
	db	low(float24(2.3456000000000001))
	db	high(float24(2.3456000000000001))
	db	low highword(float24(2.3456000000000001))
	line	15

;initializer for _Rat
	db	low(float24(3.4500000000000002))
	db	high(float24(3.4500000000000002))
	db	low highword(float24(3.4500000000000002))
	line	13

;initializer for _Dog
	dw	(03h)&0ffffh
	line	14

;initializer for _Cat
	db	low(061h)
	global	_Ans
psect	nvCOMRAM,class=COMRAM,space=1,noexec
global __pnvCOMRAM
__pnvCOMRAM:
	global	_Ans
_Ans:
       ds      3
	global	_i
	global	_i
_i:
       ds      2
; #config settings
	file	"PrimerProyecto.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	16
	global	_Mouse
_Mouse:
       ds      3
psect	dataCOMRAM
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	15
	global	_Rat
_Rat:
       ds      3
psect	dataCOMRAM
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	13
	global	_Dog
	global	_Dog
_Dog:
       ds      2
psect	dataCOMRAM
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	14
	global	_Cat
_Cat:
       ds      1
	file	"PrimerProyecto.as"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (9 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,9
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
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
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds   3
??___awtoft:	; 1 bytes @ 0xB
??___lbtoft:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xB
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xC
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xC
	ds   3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xF
	ds   3
??___ftmul:	; 1 bytes @ 0x12
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x15
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x16
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x19
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1A
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1B
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1B
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1E
	ds   3
??___ftadd:	; 1 bytes @ 0x21
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x24
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x25
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x26
	ds   1
??_main:	; 1 bytes @ 0x27
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        9
;!    BSS         0
;!    Persistent  5
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     41      55
;!    BANK0           160      0       0
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
;!    _main->___ftadd
;!    ___lbtoft->___ftpack
;!    ___ftmul->___awtoft
;!    ___ftadd->___ftmul
;!    ___awtoft->___ftpack
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    7662
;!                                             39 COMRAM     2     2      0
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                           ___lbtoft
;! ---------------------------------------------------------------------------------
;! (1) ___lbtoft                                             4     1      3    1399
;!                                              8 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             15     9      6    1849
;!                                             12 COMRAM    15     9      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___ftge                                               9     3      6     308
;!                                              0 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) ___ftadd                                             12     6      6    2595
;!                                             27 COMRAM    12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    1511
;!                                              8 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    1377
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!     ___lbtoft (ARG)
;!       ___ftpack
;!   ___ftge
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!   ___lbtoft
;!     ___ftpack
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0       0       8        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     29      37       1       57.9%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      37       6        0.0%
;!DATA                 0      0      37       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
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
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___lbtoft
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	20
global __ptext0
__ptext0:
psect	text0
	file	"C:\Users\CarlosAndrés\MPLABXProjects\PrimerProyecto.X\main.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	line	22
;main.c: 22: Inicio:
	
l15:
	line	23
	
l1078:
;main.c: 23: Ans = Rat + Cat;
	movf	((c:_Cat)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movff	(c:_Rat),(c:___ftadd@f2)
	movff	(c:_Rat+1),(c:___ftadd@f2+1)
	movff	(c:_Rat+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_Ans)
	movff	1+?___ftadd,(c:_Ans+1)
	movff	2+?___ftadd,(c:_Ans+2)
	line	25
	
l1080:
;main.c: 25: for (i = 0; i < 10; i++) {
	movlw	high(0)
	movwf	((c:_i+1)),c
	movlw	low(0)
	movwf	((c:_i)),c
	
l1082:
	btfsc	((c:_i+1)),c,7
	goto	u841
	movf	((c:_i+1)),c,w
	bnz	u840
	movlw	10
	subwf	 ((c:_i)),c,w
	btfss	status,0
	goto	u841
	goto	u840

u841:
	goto	l1086
u840:
	goto	l1106
	
l1084:
	goto	l1106
	
l16:
	line	27
	
l1086:
;main.c: 27: Ans += i*Mouse;
	movff	(c:_Ans),(c:___ftadd@f1)
	movff	(c:_Ans+1),(c:___ftadd@f1+1)
	movff	(c:_Ans+2),(c:___ftadd@f1+2)
	movff	(c:_Mouse),(c:___ftmul@f2)
	movff	(c:_Mouse+1),(c:___ftmul@f2+1)
	movff	(c:_Mouse+2),(c:___ftmul@f2+2)
	movff	(c:_i),(c:___awtoft@c)
	movff	(c:_i+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_Ans)
	movff	1+?___ftadd,(c:_Ans+1)
	movff	2+?___ftadd,(c:_Ans+2)
	line	28
	
l1088:
;main.c: 28: Ans = 2;
	movlw	low(float24(2.0000000000000000))
	movwf	((c:_Ans)),c
	movlw	high(float24(2.0000000000000000))
	movwf	((c:_Ans+1)),c
	movlw	low highword(float24(2.0000000000000000))
	movwf	((c:_Ans+2)),c

	line	29
	
l1090:
;main.c: 29: if (Ans > 10) {
	movlw	low(float24(10.000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(10.000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(10.000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:_Ans),(c:___ftge@ff2)
	movff	(c:_Ans+1),(c:___ftge@ff2+1)
	movff	(c:_Ans+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u851
	goto	u850
u851:
	goto	l1096
u850:
	goto	l1106
	line	31
	
l1092:
;main.c: 31: break;
	goto	l1106
	line	34
	
l1094:
;main.c: 34: } else if (Mouse == 3) {
	goto	l1102
	
l18:
	
l1096:
		movlw	64
	xorwf	((c:_Mouse+1)),c,w
	bnz	u861
	movlw	64
	xorwf	((c:_Mouse+2)),c,w
iorwf	((c:_Mouse)),c,w
	btfss	status,2
	goto	u861
	goto	u860

u861:
	goto	l1100
u860:
	line	35
	
l1098:
;main.c: 35: Mouse = 2;
	movlw	low(float24(2.0000000000000000))
	movwf	((c:_Mouse)),c
	movlw	high(float24(2.0000000000000000))
	movwf	((c:_Mouse+1)),c
	movlw	low highword(float24(2.0000000000000000))
	movwf	((c:_Mouse+2)),c

	line	36
;main.c: 36: } else {
	goto	l1102
	
l20:
	line	37
	
l1100:
;main.c: 37: Mouse = 2.3456;
	movlw	low(float24(2.3456000000000001))
	movwf	((c:_Mouse)),c
	movlw	high(float24(2.3456000000000001))
	movwf	((c:_Mouse+1)),c
	movlw	low highword(float24(2.3456000000000001))
	movwf	((c:_Mouse+2)),c

	goto	l1102
	line	38
	
l21:
	goto	l1102
	
l19:
	line	25
	
l1102:
	infsnz	((c:_i)),c
	incf	((c:_i+1)),c
	
l1104:
	btfsc	((c:_i+1)),c,7
	goto	u871
	movf	((c:_i+1)),c,w
	bnz	u870
	movlw	10
	subwf	 ((c:_i)),c,w
	btfss	status,0
	goto	u871
	goto	u870

u871:
	goto	l1086
u870:
	goto	l1106
	
l17:
	goto	l1106
	line	42
;main.c: 38: }
;main.c: 39: }
;main.c: 42: while (1) {
	
l22:
	line	43
	
l1106:
;main.c: 43: Mouse = Rat + 1;
	movff	(c:_Rat),(c:___ftadd@f1)
	movff	(c:_Rat+1),(c:___ftadd@f1+1)
	movff	(c:_Rat+2),(c:___ftadd@f1+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_Mouse)
	movff	1+?___ftadd,(c:_Mouse+1)
	movff	2+?___ftadd,(c:_Mouse+2)
	line	44
	
l1108:
;main.c: 44: Rat = 2 / 3;
	movlw	low(float24(0.0000000000000000))
	movwf	((c:_Rat)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:_Rat+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:_Rat+2)),c

	line	46
	
l1110:
;main.c: 46: if (Rat < 1) {
	movff	(c:_Rat),(c:___ftge@ff1)
	movff	(c:_Rat+1),(c:___ftge@ff1+1)
	movff	(c:_Rat+2),(c:___ftge@ff1+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u881
	goto	u880
u881:
	goto	l1106
u880:
	goto	l1122
	line	47
	
l1112:
;main.c: 47: break;
	goto	l1122
	line	48
	
l23:
	goto	l1106
	line	49
	
l25:
	line	42
	goto	l1106
	
l24:
	line	53
;main.c: 48: }
;main.c: 49: }
;main.c: 53: switch (i) {
	goto	l1122
	line	54
;main.c: 54: case 0:
	
l27:
	line	55
;main.c: 55: goto Inicio;
	goto	l15
	line	56
	
l1114:
;main.c: 56: break;
	goto	l34
	line	57
;main.c: 57: case 1:
	
l29:
	line	58
	
l1116:
;main.c: 58: Rat = 0;
	movlw	low(float24(0.0000000000000000))
	movwf	((c:_Rat)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:_Rat+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:_Rat+2)),c

	line	59
;main.c: 59: break;
	goto	l34
	line	60
;main.c: 60: case 2:
	
l30:
	goto	l1118
	line	62
	
l31:
	goto	l1118
	line	64
	
l32:
	line	65
	
l1118:
;main.c: 62: case 3:
;main.c: 64: case 4:
;main.c: 65: Rat = 10;
	movlw	low(float24(10.000000000000000))
	movwf	((c:_Rat)),c
	movlw	high(float24(10.000000000000000))
	movwf	((c:_Rat+1)),c
	movlw	low highword(float24(10.000000000000000))
	movwf	((c:_Rat+2)),c

	line	66
;main.c: 66: default:
	
l33:
	line	67
;main.c: 67: Rat = 100;
	movlw	low(float24(100.00000000000000))
	movwf	((c:_Rat)),c
	movlw	high(float24(100.00000000000000))
	movwf	((c:_Rat+1)),c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:_Rat+2)),c

	line	68
;main.c: 68: break;
	goto	l34
	line	69
	
l1120:
;main.c: 69: }
	goto	l34
	line	53
	
l26:
	
l1122:
	movff	(c:_i),??_main+0+0
	movff	(c:_i+1),??_main+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l1132
	goto	l33
	
l1132:
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l15
	xorlw	1^0	; case 1
	skipnz
	goto	l1116
	xorlw	2^1	; case 2
	skipnz
	goto	l1118
	xorlw	3^2	; case 3
	skipnz
	goto	l1118
	xorlw	4^3	; case 4
	skipnz
	goto	l1118
	goto	l33

	line	69
	
l28:
	line	71
;main.c: 70: return;
	
l34:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\lbtoft.c"
	line	27
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:
;incstack = 0
	opt	stack 29
;___lbtoft@c stored from wreg
	movwf	((c:___lbtoft@c)),c
	line	29
	
l1074:
	movf	((c:___lbtoft@c)),c,w
	movwf	((c:___ftpack@arg)),c
	clrf	((c:___ftpack@arg+1)),c
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lbtoft)
	movff	1+?___ftpack,(c:?___lbtoft+1)
	movff	2+?___ftpack,(c:?___lbtoft+2)
	goto	l381
	
l1076:
	line	30
	
l381:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   12[COMRAM] float 
;;  f2              3   15[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   22[COMRAM] unsigned um
;;  sign            1   26[COMRAM] unsigned char 
;;  cntr            1   25[COMRAM] unsigned char 
;;  exp             1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   12[COMRAM] float 
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
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftmul.c"
	line	62
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 29
	line	67
	
l996:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u741
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u741:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u751
	goto	u750
u751:
	goto	l1002
u750:
	line	68
	
l998:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l329
	
l1000:
	goto	l329
	
l328:
	line	69
	
l1002:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u761
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u761:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u771
	goto	u770
u771:
	goto	l1008
u770:
	line	70
	
l1004:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l329
	
l1006:
	goto	l329
	
l330:
	line	71
	
l1008:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l1010:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l1012:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l1014:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l1016:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l1018:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l1020:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1022
	line	135
	
l331:
	line	136
	
l1022:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u781
	goto	u780
u781:
	goto	l1026
u780:
	line	137
	
l1024:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1026
	
l332:
	line	138
	
l1026:
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
	
l1028:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1022
	goto	l1030
	
l333:
	line	143
	
l1030:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1032
	line	144
	
l334:
	line	145
	
l1032:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u791
	goto	u790
u791:
	goto	l1036
u790:
	line	146
	
l1034:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1036
	
l335:
	line	147
	
l1036:
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
	
l1038:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1032
	goto	l1040
	
l336:
	line	156
	
l1040:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l329
	
l1042:
	line	157
	
l329:
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftge.c"
	line	4
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 30
	line	6
	
l1056:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u811
	goto	u810
u811:
	goto	l1060
u810:
	line	7
	
l1058:
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
	goto	l1060
	
l321:
	line	8
	
l1060:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u821
	goto	u820
u821:
	goto	l1064
u820:
	line	9
	
l1062:
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
	goto	l1064
	
l322:
	line	10
	
l1064:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l1066:
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
	goto	u831
	goto	u830

u831:
	goto	l1070
u830:
	
l1068:
	bcf	status,0
	goto	l323
	
l886:
	
l1070:
	bsf	status,0
	goto	l323
	
l888:
	goto	l323
	
l1072:
	line	13
	
l323:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   27[COMRAM] float 
;;  f2              3   30[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   38[COMRAM] unsigned char 
;;  exp2            1   37[COMRAM] unsigned char 
;;  sign            1   36[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[COMRAM] float 
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
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftadd.c"
	line	86
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 29
	line	90
	
l926:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u531
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u531:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u541
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u541:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l928:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u551
	goto	u550
u551:
	goto	l282
u550:
	
l930:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u561
	goto	u560

u561:
	goto	l934
u560:
	
l932:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u571
	goto	u570

u571:
	goto	l934
u570:
	
l282:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l283
	
l280:
	line	94
	
l934:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l286
u580:
	
l936:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u591
	goto	u590

u591:
	goto	l940
u590:
	
l938:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u601
	goto	u600

u601:
	goto	l940
u600:
	
l286:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l283
	
l284:
	line	96
	
l940:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l942:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u611
	goto	u610
u611:
	goto	l946
u610:
	line	98
	
l944:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l946
	
l287:
	line	99
	
l946:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u621
	goto	u620
u621:
	goto	l288
u620:
	line	100
	
l948:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l288:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l950:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l952:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l954:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u631
	goto	u630

u631:
	goto	l966
u630:
	goto	l956
	line	109
	
l290:
	line	110
	
l956:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l958:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u641
	goto	u640

u641:
	goto	l964
u640:
	
l960:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l956
u650:
	goto	l964
	
l292:
	goto	l964
	
l293:
	line	113
	goto	l964
	
l295:
	line	114
	
l962:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l964
	line	116
	
l294:
	line	113
	
l964:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u661
	goto	u660

u661:
	goto	l962
u660:
	goto	l297
	
l296:
	line	117
	goto	l297
	
l289:
	
l966:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u671
	goto	u670

u671:
	goto	l297
u670:
	goto	l968
	line	120
	
l299:
	line	121
	
l968:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l970:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u681
	goto	u680

u681:
	goto	l976
u680:
	
l972:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u691
	goto	u690
u691:
	goto	l968
u690:
	goto	l976
	
l301:
	goto	l976
	
l302:
	line	124
	goto	l976
	
l304:
	line	125
	
l974:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l976
	line	127
	
l303:
	line	124
	
l976:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u701
	goto	u700

u701:
	goto	l974
u700:
	goto	l297
	
l305:
	goto	l297
	line	128
	
l298:
	line	129
	
l297:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u711
	goto	u710
u711:
	goto	l306
u710:
	line	131
	
l978:
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
	
l306:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u721
	goto	u720
u721:
	goto	l982
u720:
	line	136
	
l980:
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

	goto	l982
	line	138
	
l307:
	line	139
	
l982:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l984:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l986:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u731
	goto	u730
u731:
	goto	l992
u730:
	line	142
	
l988:
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
	
l990:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l992
	line	145
	
l308:
	line	146
	
l992:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l283
	
l994:
	line	148
	
l283:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\awtoft.c"
	line	32
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 29
	line	36
	
l1044:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l1046:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u800
	goto	u801

u801:
	goto	l1052
u800:
	line	38
	
l1048:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l1050:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l1052
	line	40
	
l230:
	line	41
	
l1052:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	goto	l231
	
l1054:
	line	42
	
l231:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
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
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\float.c"
	line	62
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.36\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 29
	line	64
	
l890:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u451
	goto	u450
u451:
	goto	l894
u450:
	
l892:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u461
	goto	u460

u461:
	goto	l900
u460:
	goto	l894
	
l247:
	line	65
	
l894:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l248
	
l896:
	goto	l248
	
l245:
	line	66
	goto	l900
	
l250:
	line	67
	
l898:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l900
	line	69
	
l249:
	line	66
	
l900:
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
	goto	u471
	goto	u470

u471:
	goto	l898
u470:
	goto	l906
	
l251:
	line	70
	goto	l906
	
l253:
	line	71
	
l902:
	incf	((c:___ftpack@exp)),c
	line	72
	
l904:
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
	goto	l906
	line	74
	
l252:
	line	70
	
l906:
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
	goto	u481
	goto	u480

u481:
	goto	l902
u480:
	goto	l910
	
l254:
	line	75
	goto	l910
	
l256:
	line	76
	
l908:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l910
	line	78
	
l255:
	line	75
	
l910:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u491
	goto	u490
u491:
	goto	l259
u490:
	
l912:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u501
	goto	u500

u501:
	goto	l908
u500:
	goto	l259
	
l258:
	
l259:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u511
	goto	u510
u511:
	goto	l916
u510:
	line	80
	
l914:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l916
	
l260:
	line	81
	
l916:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l918:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u521
	goto	u520
u521:
	goto	l922
u520:
	line	84
	
l920:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l922
	
l261:
	line	85
	
l922:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l248
	
l924:
	line	86
	
l248:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	GLOBAL	__activetblptr
__activetblptr	EQU	2
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
