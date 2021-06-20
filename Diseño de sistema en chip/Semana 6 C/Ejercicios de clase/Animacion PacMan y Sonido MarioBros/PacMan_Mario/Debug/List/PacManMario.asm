
;CodeVisionAVR C Compiler V3.12 Advanced
;(C) Copyright 1998-2014 Pavel Haiduc, HP InfoTech s.r.l.
;http://www.hpinfotech.com

;Build configuration    : Debug
;Chip type              : ATmega328P
;Program type           : Application
;Clock frequency        : 1.000000 MHz
;Memory model           : Small
;Optimize for           : Size
;(s)printf features     : int, width
;(s)scanf features      : int, width
;External RAM size      : 0
;Data Stack size        : 512 byte(s)
;Heap size              : 0 byte(s)
;Promote 'char' to 'int': Yes
;'char' is unsigned     : Yes
;8 bit enums            : Yes
;Global 'const' stored in FLASH: No
;Enhanced function parameter passing: Yes
;Enhanced core instructions: On
;Automatic register allocation for global variables: Off
;Smart register allocation: Off

	#define _MODEL_SMALL_

	#pragma AVRPART ADMIN PART_NAME ATmega328P
	#pragma AVRPART MEMORY PROG_FLASH 32768
	#pragma AVRPART MEMORY EEPROM 1024
	#pragma AVRPART MEMORY INT_SRAM SIZE 2048
	#pragma AVRPART MEMORY INT_SRAM START_ADDR 0x100

	#define CALL_SUPPORTED 1

	.LISTMAC
	.EQU EERE=0x0
	.EQU EEWE=0x1
	.EQU EEMWE=0x2
	.EQU UDRE=0x5
	.EQU RXC=0x7
	.EQU EECR=0x1F
	.EQU EEDR=0x20
	.EQU EEARL=0x21
	.EQU EEARH=0x22
	.EQU SPSR=0x2D
	.EQU SPDR=0x2E
	.EQU SMCR=0x33
	.EQU MCUSR=0x34
	.EQU MCUCR=0x35
	.EQU WDTCSR=0x60
	.EQU UCSR0A=0xC0
	.EQU UDR0=0xC6
	.EQU SPL=0x3D
	.EQU SPH=0x3E
	.EQU SREG=0x3F
	.EQU GPIOR0=0x1E

	.DEF R0X0=R0
	.DEF R0X1=R1
	.DEF R0X2=R2
	.DEF R0X3=R3
	.DEF R0X4=R4
	.DEF R0X5=R5
	.DEF R0X6=R6
	.DEF R0X7=R7
	.DEF R0X8=R8
	.DEF R0X9=R9
	.DEF R0XA=R10
	.DEF R0XB=R11
	.DEF R0XC=R12
	.DEF R0XD=R13
	.DEF R0XE=R14
	.DEF R0XF=R15
	.DEF R0X10=R16
	.DEF R0X11=R17
	.DEF R0X12=R18
	.DEF R0X13=R19
	.DEF R0X14=R20
	.DEF R0X15=R21
	.DEF R0X16=R22
	.DEF R0X17=R23
	.DEF R0X18=R24
	.DEF R0X19=R25
	.DEF R0X1A=R26
	.DEF R0X1B=R27
	.DEF R0X1C=R28
	.DEF R0X1D=R29
	.DEF R0X1E=R30
	.DEF R0X1F=R31

	.EQU __SRAM_START=0x0100
	.EQU __SRAM_END=0x08FF
	.EQU __DSTACK_SIZE=0x0200
	.EQU __HEAP_SIZE=0x0000
	.EQU __CLEAR_SRAM_SIZE=__SRAM_END-__SRAM_START+1

	.MACRO __CPD1N
	CPI  R30,LOW(@0)
	LDI  R26,HIGH(@0)
	CPC  R31,R26
	LDI  R26,BYTE3(@0)
	CPC  R22,R26
	LDI  R26,BYTE4(@0)
	CPC  R23,R26
	.ENDM

	.MACRO __CPD2N
	CPI  R26,LOW(@0)
	LDI  R30,HIGH(@0)
	CPC  R27,R30
	LDI  R30,BYTE3(@0)
	CPC  R24,R30
	LDI  R30,BYTE4(@0)
	CPC  R25,R30
	.ENDM

	.MACRO __CPWRR
	CP   R@0,R@2
	CPC  R@1,R@3
	.ENDM

	.MACRO __CPWRN
	CPI  R@0,LOW(@2)
	LDI  R30,HIGH(@2)
	CPC  R@1,R30
	.ENDM

	.MACRO __ADDB1MN
	SUBI R30,LOW(-@0-(@1))
	.ENDM

	.MACRO __ADDB2MN
	SUBI R26,LOW(-@0-(@1))
	.ENDM

	.MACRO __ADDW1MN
	SUBI R30,LOW(-@0-(@1))
	SBCI R31,HIGH(-@0-(@1))
	.ENDM

	.MACRO __ADDW2MN
	SUBI R26,LOW(-@0-(@1))
	SBCI R27,HIGH(-@0-(@1))
	.ENDM

	.MACRO __ADDW1FN
	SUBI R30,LOW(-2*@0-(@1))
	SBCI R31,HIGH(-2*@0-(@1))
	.ENDM

	.MACRO __ADDD1FN
	SUBI R30,LOW(-2*@0-(@1))
	SBCI R31,HIGH(-2*@0-(@1))
	SBCI R22,BYTE3(-2*@0-(@1))
	.ENDM

	.MACRO __ADDD1N
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	SBCI R22,BYTE3(-@0)
	SBCI R23,BYTE4(-@0)
	.ENDM

	.MACRO __ADDD2N
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	SBCI R24,BYTE3(-@0)
	SBCI R25,BYTE4(-@0)
	.ENDM

	.MACRO __SUBD1N
	SUBI R30,LOW(@0)
	SBCI R31,HIGH(@0)
	SBCI R22,BYTE3(@0)
	SBCI R23,BYTE4(@0)
	.ENDM

	.MACRO __SUBD2N
	SUBI R26,LOW(@0)
	SBCI R27,HIGH(@0)
	SBCI R24,BYTE3(@0)
	SBCI R25,BYTE4(@0)
	.ENDM

	.MACRO __ANDBMNN
	LDS  R30,@0+(@1)
	ANDI R30,LOW(@2)
	STS  @0+(@1),R30
	.ENDM

	.MACRO __ANDWMNN
	LDS  R30,@0+(@1)
	ANDI R30,LOW(@2)
	STS  @0+(@1),R30
	LDS  R30,@0+(@1)+1
	ANDI R30,HIGH(@2)
	STS  @0+(@1)+1,R30
	.ENDM

	.MACRO __ANDD1N
	ANDI R30,LOW(@0)
	ANDI R31,HIGH(@0)
	ANDI R22,BYTE3(@0)
	ANDI R23,BYTE4(@0)
	.ENDM

	.MACRO __ANDD2N
	ANDI R26,LOW(@0)
	ANDI R27,HIGH(@0)
	ANDI R24,BYTE3(@0)
	ANDI R25,BYTE4(@0)
	.ENDM

	.MACRO __ORBMNN
	LDS  R30,@0+(@1)
	ORI  R30,LOW(@2)
	STS  @0+(@1),R30
	.ENDM

	.MACRO __ORWMNN
	LDS  R30,@0+(@1)
	ORI  R30,LOW(@2)
	STS  @0+(@1),R30
	LDS  R30,@0+(@1)+1
	ORI  R30,HIGH(@2)
	STS  @0+(@1)+1,R30
	.ENDM

	.MACRO __ORD1N
	ORI  R30,LOW(@0)
	ORI  R31,HIGH(@0)
	ORI  R22,BYTE3(@0)
	ORI  R23,BYTE4(@0)
	.ENDM

	.MACRO __ORD2N
	ORI  R26,LOW(@0)
	ORI  R27,HIGH(@0)
	ORI  R24,BYTE3(@0)
	ORI  R25,BYTE4(@0)
	.ENDM

	.MACRO __DELAY_USB
	LDI  R24,LOW(@0)
__DELAY_USB_LOOP:
	DEC  R24
	BRNE __DELAY_USB_LOOP
	.ENDM

	.MACRO __DELAY_USW
	LDI  R24,LOW(@0)
	LDI  R25,HIGH(@0)
__DELAY_USW_LOOP:
	SBIW R24,1
	BRNE __DELAY_USW_LOOP
	.ENDM

	.MACRO __GETD1S
	LDD  R30,Y+@0
	LDD  R31,Y+@0+1
	LDD  R22,Y+@0+2
	LDD  R23,Y+@0+3
	.ENDM

	.MACRO __GETD2S
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	LDD  R24,Y+@0+2
	LDD  R25,Y+@0+3
	.ENDM

	.MACRO __PUTD1S
	STD  Y+@0,R30
	STD  Y+@0+1,R31
	STD  Y+@0+2,R22
	STD  Y+@0+3,R23
	.ENDM

	.MACRO __PUTD2S
	STD  Y+@0,R26
	STD  Y+@0+1,R27
	STD  Y+@0+2,R24
	STD  Y+@0+3,R25
	.ENDM

	.MACRO __PUTDZ2
	STD  Z+@0,R26
	STD  Z+@0+1,R27
	STD  Z+@0+2,R24
	STD  Z+@0+3,R25
	.ENDM

	.MACRO __CLRD1S
	STD  Y+@0,R30
	STD  Y+@0+1,R30
	STD  Y+@0+2,R30
	STD  Y+@0+3,R30
	.ENDM

	.MACRO __POINTB1MN
	LDI  R30,LOW(@0+(@1))
	.ENDM

	.MACRO __POINTW1MN
	LDI  R30,LOW(@0+(@1))
	LDI  R31,HIGH(@0+(@1))
	.ENDM

	.MACRO __POINTD1M
	LDI  R30,LOW(@0)
	LDI  R31,HIGH(@0)
	LDI  R22,BYTE3(@0)
	LDI  R23,BYTE4(@0)
	.ENDM

	.MACRO __POINTW1FN
	LDI  R30,LOW(2*@0+(@1))
	LDI  R31,HIGH(2*@0+(@1))
	.ENDM

	.MACRO __POINTD1FN
	LDI  R30,LOW(2*@0+(@1))
	LDI  R31,HIGH(2*@0+(@1))
	LDI  R22,BYTE3(2*@0+(@1))
	LDI  R23,BYTE4(2*@0+(@1))
	.ENDM

	.MACRO __POINTB2MN
	LDI  R26,LOW(@0+(@1))
	.ENDM

	.MACRO __POINTW2MN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	.ENDM

	.MACRO __POINTW2FN
	LDI  R26,LOW(2*@0+(@1))
	LDI  R27,HIGH(2*@0+(@1))
	.ENDM

	.MACRO __POINTD2FN
	LDI  R26,LOW(2*@0+(@1))
	LDI  R27,HIGH(2*@0+(@1))
	LDI  R24,BYTE3(2*@0+(@1))
	LDI  R25,BYTE4(2*@0+(@1))
	.ENDM

	.MACRO __POINTBRM
	LDI  R@0,LOW(@1)
	.ENDM

	.MACRO __POINTWRM
	LDI  R@0,LOW(@2)
	LDI  R@1,HIGH(@2)
	.ENDM

	.MACRO __POINTBRMN
	LDI  R@0,LOW(@1+(@2))
	.ENDM

	.MACRO __POINTWRMN
	LDI  R@0,LOW(@2+(@3))
	LDI  R@1,HIGH(@2+(@3))
	.ENDM

	.MACRO __POINTWRFN
	LDI  R@0,LOW(@2*2+(@3))
	LDI  R@1,HIGH(@2*2+(@3))
	.ENDM

	.MACRO __GETD1N
	LDI  R30,LOW(@0)
	LDI  R31,HIGH(@0)
	LDI  R22,BYTE3(@0)
	LDI  R23,BYTE4(@0)
	.ENDM

	.MACRO __GETD2N
	LDI  R26,LOW(@0)
	LDI  R27,HIGH(@0)
	LDI  R24,BYTE3(@0)
	LDI  R25,BYTE4(@0)
	.ENDM

	.MACRO __GETB1MN
	LDS  R30,@0+(@1)
	.ENDM

	.MACRO __GETB1HMN
	LDS  R31,@0+(@1)
	.ENDM

	.MACRO __GETW1MN
	LDS  R30,@0+(@1)
	LDS  R31,@0+(@1)+1
	.ENDM

	.MACRO __GETD1MN
	LDS  R30,@0+(@1)
	LDS  R31,@0+(@1)+1
	LDS  R22,@0+(@1)+2
	LDS  R23,@0+(@1)+3
	.ENDM

	.MACRO __GETBRMN
	LDS  R@0,@1+(@2)
	.ENDM

	.MACRO __GETWRMN
	LDS  R@0,@2+(@3)
	LDS  R@1,@2+(@3)+1
	.ENDM

	.MACRO __GETWRZ
	LDD  R@0,Z+@2
	LDD  R@1,Z+@2+1
	.ENDM

	.MACRO __GETD2Z
	LDD  R26,Z+@0
	LDD  R27,Z+@0+1
	LDD  R24,Z+@0+2
	LDD  R25,Z+@0+3
	.ENDM

	.MACRO __GETB2MN
	LDS  R26,@0+(@1)
	.ENDM

	.MACRO __GETW2MN
	LDS  R26,@0+(@1)
	LDS  R27,@0+(@1)+1
	.ENDM

	.MACRO __GETD2MN
	LDS  R26,@0+(@1)
	LDS  R27,@0+(@1)+1
	LDS  R24,@0+(@1)+2
	LDS  R25,@0+(@1)+3
	.ENDM

	.MACRO __PUTB1MN
	STS  @0+(@1),R30
	.ENDM

	.MACRO __PUTW1MN
	STS  @0+(@1),R30
	STS  @0+(@1)+1,R31
	.ENDM

	.MACRO __PUTD1MN
	STS  @0+(@1),R30
	STS  @0+(@1)+1,R31
	STS  @0+(@1)+2,R22
	STS  @0+(@1)+3,R23
	.ENDM

	.MACRO __PUTB1EN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMWRB
	.ENDM

	.MACRO __PUTW1EN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMWRW
	.ENDM

	.MACRO __PUTD1EN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMWRD
	.ENDM

	.MACRO __PUTBR0MN
	STS  @0+(@1),R0
	.ENDM

	.MACRO __PUTBMRN
	STS  @0+(@1),R@2
	.ENDM

	.MACRO __PUTWMRN
	STS  @0+(@1),R@2
	STS  @0+(@1)+1,R@3
	.ENDM

	.MACRO __PUTBZR
	STD  Z+@1,R@0
	.ENDM

	.MACRO __PUTWZR
	STD  Z+@2,R@0
	STD  Z+@2+1,R@1
	.ENDM

	.MACRO __GETW1R
	MOV  R30,R@0
	MOV  R31,R@1
	.ENDM

	.MACRO __GETW2R
	MOV  R26,R@0
	MOV  R27,R@1
	.ENDM

	.MACRO __GETWRN
	LDI  R@0,LOW(@2)
	LDI  R@1,HIGH(@2)
	.ENDM

	.MACRO __PUTW1R
	MOV  R@0,R30
	MOV  R@1,R31
	.ENDM

	.MACRO __PUTW2R
	MOV  R@0,R26
	MOV  R@1,R27
	.ENDM

	.MACRO __ADDWRN
	SUBI R@0,LOW(-@2)
	SBCI R@1,HIGH(-@2)
	.ENDM

	.MACRO __ADDWRR
	ADD  R@0,R@2
	ADC  R@1,R@3
	.ENDM

	.MACRO __SUBWRN
	SUBI R@0,LOW(@2)
	SBCI R@1,HIGH(@2)
	.ENDM

	.MACRO __SUBWRR
	SUB  R@0,R@2
	SBC  R@1,R@3
	.ENDM

	.MACRO __ANDWRN
	ANDI R@0,LOW(@2)
	ANDI R@1,HIGH(@2)
	.ENDM

	.MACRO __ANDWRR
	AND  R@0,R@2
	AND  R@1,R@3
	.ENDM

	.MACRO __ORWRN
	ORI  R@0,LOW(@2)
	ORI  R@1,HIGH(@2)
	.ENDM

	.MACRO __ORWRR
	OR   R@0,R@2
	OR   R@1,R@3
	.ENDM

	.MACRO __EORWRR
	EOR  R@0,R@2
	EOR  R@1,R@3
	.ENDM

	.MACRO __GETWRS
	LDD  R@0,Y+@2
	LDD  R@1,Y+@2+1
	.ENDM

	.MACRO __PUTBSR
	STD  Y+@1,R@0
	.ENDM

	.MACRO __PUTWSR
	STD  Y+@2,R@0
	STD  Y+@2+1,R@1
	.ENDM

	.MACRO __MOVEWRR
	MOV  R@0,R@2
	MOV  R@1,R@3
	.ENDM

	.MACRO __INWR
	IN   R@0,@2
	IN   R@1,@2+1
	.ENDM

	.MACRO __OUTWR
	OUT  @2+1,R@1
	OUT  @2,R@0
	.ENDM

	.MACRO __CALL1MN
	LDS  R30,@0+(@1)
	LDS  R31,@0+(@1)+1
	ICALL
	.ENDM

	.MACRO __CALL1FN
	LDI  R30,LOW(2*@0+(@1))
	LDI  R31,HIGH(2*@0+(@1))
	CALL __GETW1PF
	ICALL
	.ENDM

	.MACRO __CALL2EN
	PUSH R26
	PUSH R27
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMRDW
	POP  R27
	POP  R26
	ICALL
	.ENDM

	.MACRO __CALL2EX
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	CALL __EEPROMRDD
	ICALL
	.ENDM

	.MACRO __GETW1STACK
	IN   R30,SPL
	IN   R31,SPH
	ADIW R30,@0+1
	LD   R0,Z+
	LD   R31,Z
	MOV  R30,R0
	.ENDM

	.MACRO __GETD1STACK
	IN   R30,SPL
	IN   R31,SPH
	ADIW R30,@0+1
	LD   R0,Z+
	LD   R1,Z+
	LD   R22,Z
	MOVW R30,R0
	.ENDM

	.MACRO __NBST
	BST  R@0,@1
	IN   R30,SREG
	LDI  R31,0x40
	EOR  R30,R31
	OUT  SREG,R30
	.ENDM


	.MACRO __PUTB1SN
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SN
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SN
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1SNS
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	ADIW R26,@1
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SNS
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	ADIW R26,@1
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SNS
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	ADIW R26,@1
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1PMN
	LDS  R26,@0
	LDS  R27,@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1PMN
	LDS  R26,@0
	LDS  R27,@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1PMN
	LDS  R26,@0
	LDS  R27,@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1PMNS
	LDS  R26,@0
	LDS  R27,@0+1
	ADIW R26,@1
	ST   X,R30
	.ENDM

	.MACRO __PUTW1PMNS
	LDS  R26,@0
	LDS  R27,@0+1
	ADIW R26,@1
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1PMNS
	LDS  R26,@0
	LDS  R27,@0+1
	ADIW R26,@1
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1RN
	MOVW R26,R@0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RN
	MOVW R26,R@0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RN
	MOVW R26,R@0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1RNS
	MOVW R26,R@0
	ADIW R26,@1
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RNS
	MOVW R26,R@0
	ADIW R26,@1
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RNS
	MOVW R26,R@0
	ADIW R26,@1
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1RON
	MOV  R26,R@0
	MOV  R27,R@1
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RON
	MOV  R26,R@0
	MOV  R27,R@1
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RON
	MOV  R26,R@0
	MOV  R27,R@1
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	CALL __PUTDP1
	.ENDM

	.MACRO __PUTB1RONS
	MOV  R26,R@0
	MOV  R27,R@1
	ADIW R26,@2
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RONS
	MOV  R26,R@0
	MOV  R27,R@1
	ADIW R26,@2
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RONS
	MOV  R26,R@0
	MOV  R27,R@1
	ADIW R26,@2
	CALL __PUTDP1
	.ENDM


	.MACRO __GETB1SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R30,Z
	.ENDM

	.MACRO __GETB1HSX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R31,Z
	.ENDM

	.MACRO __GETW1SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R0,Z+
	LD   R31,Z
	MOV  R30,R0
	.ENDM

	.MACRO __GETD1SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R0,Z+
	LD   R1,Z+
	LD   R22,Z+
	LD   R23,Z
	MOVW R30,R0
	.ENDM

	.MACRO __GETB2SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R26,X
	.ENDM

	.MACRO __GETW2SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	.ENDM

	.MACRO __GETD2SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R1,X+
	LD   R24,X+
	LD   R25,X
	MOVW R26,R0
	.ENDM

	.MACRO __GETBRSX
	MOVW R30,R28
	SUBI R30,LOW(-@1)
	SBCI R31,HIGH(-@1)
	LD   R@0,Z
	.ENDM

	.MACRO __GETWRSX
	MOVW R30,R28
	SUBI R30,LOW(-@2)
	SBCI R31,HIGH(-@2)
	LD   R@0,Z+
	LD   R@1,Z
	.ENDM

	.MACRO __GETBRSX2
	MOVW R26,R28
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	LD   R@0,X
	.ENDM

	.MACRO __GETWRSX2
	MOVW R26,R28
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	LD   R@0,X+
	LD   R@1,X
	.ENDM

	.MACRO __LSLW8SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R31,Z
	CLR  R30
	.ENDM

	.MACRO __PUTB1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __CLRW1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X,R30
	.ENDM

	.MACRO __CLRD1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X+,R30
	ST   X+,R30
	ST   X,R30
	.ENDM

	.MACRO __PUTB2SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	ST   Z,R26
	.ENDM

	.MACRO __PUTW2SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	ST   Z+,R26
	ST   Z,R27
	.ENDM

	.MACRO __PUTD2SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	ST   Z+,R26
	ST   Z+,R27
	ST   Z+,R24
	ST   Z,R25
	.ENDM

	.MACRO __PUTBSRX
	MOVW R30,R28
	SUBI R30,LOW(-@1)
	SBCI R31,HIGH(-@1)
	ST   Z,R@0
	.ENDM

	.MACRO __PUTWSRX
	MOVW R30,R28
	SUBI R30,LOW(-@2)
	SBCI R31,HIGH(-@2)
	ST   Z+,R@0
	ST   Z,R@1
	.ENDM

	.MACRO __PUTB1SNX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SNX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SNX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __MULBRR
	MULS R@0,R@1
	MOVW R30,R0
	.ENDM

	.MACRO __MULBRRU
	MUL  R@0,R@1
	MOVW R30,R0
	.ENDM

	.MACRO __MULBRR0
	MULS R@0,R@1
	.ENDM

	.MACRO __MULBRRU0
	MUL  R@0,R@1
	.ENDM

	.MACRO __MULBNWRU
	LDI  R26,@2
	MUL  R26,R@0
	MOVW R30,R0
	MUL  R26,R@1
	ADD  R31,R0
	.ENDM

;GPIOR0 INITIALIZATION VALUE
	.EQU __GPIOR0_INIT=0x00

	.CSEG
	.ORG 0x00

;START OF CODE MARKER
__START_OF_CODE:

;INTERRUPT VECTORS
	JMP  __RESET
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  _nota
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00

_MarioBros:
	.DB  0x94,0x2,0x94,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0xC,0x2,0x94,0x2,0x1,0x0
	.DB  0xE,0x3,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x87,0x1,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0xC,0x2,0x1,0x0,0x1,0x0,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x4A,0x1,0x1,0x0
	.DB  0x1,0x0,0xB8,0x1,0x1,0x0,0xEE,0x1
	.DB  0x1,0x0,0xD3,0x1,0xB8,0x1,0x1,0x0
	.DB  0x87,0x1,0x94,0x2,0x1,0x0,0xE,0x3
	.DB  0x70,0x3,0x1,0x0,0xBA,0x2,0xE,0x3
	.DB  0x1,0x0,0x94,0x2,0x1,0x0,0xC,0x2
	.DB  0x4C,0x2,0xEE,0x1,0x1,0x0,0x1,0x0
	.DB  0xC,0x2,0x1,0x0,0x1,0x0,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x4A,0x1,0x1,0x0
	.DB  0x1,0x0,0xB8,0x1,0x1,0x0,0xEE,0x1
	.DB  0x1,0x0,0xD3,0x1,0xB8,0x1,0x1,0x0
	.DB  0x87,0x1,0x94,0x2,0x1,0x0,0xE,0x3
	.DB  0x70,0x3,0x1,0x0,0xBA,0x2,0xE,0x3
	.DB  0x1,0x0,0x94,0x2,0x1,0x0,0xC,0x2
	.DB  0x4C,0x2,0xEE,0x1,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xE,0x3,0xE4,0x2
	.DB  0xBA,0x2,0x70,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0xA0,0x1,0xB8,0x1,0xC,0x2
	.DB  0x1,0x0,0xB8,0x1,0xC,0x2,0x4C,0x2
	.DB  0x1,0x0,0x1,0x0,0xE,0x3,0xE4,0x2
	.DB  0xBA,0x2,0x70,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0x18,0x4,0x1,0x0,0x18,0x4
	.DB  0x18,0x4,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xE,0x3,0xE4,0x2
	.DB  0xBA,0x2,0x70,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0xA0,0x1,0xB8,0x1,0xC,0x2
	.DB  0x1,0x0,0xB8,0x1,0xC,0x2,0x4C,0x2
	.DB  0x1,0x0,0x1,0x0,0x70,0x2,0x1,0x0
	.DB  0x1,0x0,0x4C,0x2,0x1,0x0,0x1,0x0
	.DB  0xC,0x2,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xE,0x3,0xE4,0x2
	.DB  0xBA,0x2,0x70,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0xA0,0x1,0xB8,0x1,0xC,0x2
	.DB  0x1,0x0,0xB8,0x1,0xC,0x2,0x4C,0x2
	.DB  0x1,0x0,0x1,0x0,0xE,0x3,0xE4,0x2
	.DB  0xBA,0x2,0x70,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0x18,0x4,0x1,0x0,0x18,0x4
	.DB  0x18,0x4,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xE,0x3,0xE4,0x2
	.DB  0xBA,0x2,0x70,0x2,0x1,0x0,0x94,0x2
	.DB  0x1,0x0,0xA0,0x1,0xB8,0x1,0xC,0x2
	.DB  0x1,0x0,0xB8,0x1,0xC,0x2,0x4C,0x2
	.DB  0x1,0x0,0x1,0x0,0x70,0x2,0x1,0x0
	.DB  0x1,0x0,0x4C,0x2,0x1,0x0,0x1,0x0
	.DB  0xC,0x2,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0xC,0x2,0xC,0x2,0x1,0x0,0xC,0x2
	.DB  0x1,0x0,0xC,0x2,0x4C,0x2,0x1,0x0
	.DB  0x94,0x2,0xC,0x2,0x1,0x0,0xB8,0x1
	.DB  0x87,0x1,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0xC,0x2,0xC,0x2,0x1,0x0,0xC,0x2
	.DB  0x1,0x0,0xC,0x2,0x4C,0x2,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xC,0x2
	.DB  0xC,0x2,0x1,0x0,0xC,0x2,0x1,0x0
	.DB  0xC,0x2,0x4C,0x2,0x1,0x0,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0xB8,0x1,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x94,0x2
	.DB  0x94,0x2,0x1,0x0,0x94,0x2,0x1,0x0
	.DB  0xC,0x2,0x94,0x2,0x1,0x0,0xE,0x3
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xC,0x2
	.DB  0x1,0x0,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0x4A,0x1,0x1,0x0,0x1,0x0
	.DB  0xB8,0x1,0x1,0x0,0xEE,0x1,0x1,0x0
	.DB  0xD3,0x1,0xB8,0x1,0x1,0x0,0x87,0x1
	.DB  0x94,0x2,0x1,0x0,0xE,0x3,0x70,0x3
	.DB  0x1,0x0,0xBA,0x2,0xE,0x3,0x1,0x0
	.DB  0x94,0x2,0x1,0x0,0xC,0x2,0x4C,0x2
	.DB  0xEE,0x1,0x1,0x0,0x1,0x0,0xC,0x2
	.DB  0x1,0x0,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0x4A,0x1,0x1,0x0,0x1,0x0
	.DB  0xB8,0x1,0x1,0x0,0xEE,0x1,0x1,0x0
	.DB  0xD3,0x1,0xB8,0x1,0x1,0x0,0x87,0x1
	.DB  0x94,0x2,0x1,0x0,0xE,0x3,0x70,0x3
	.DB  0x1,0x0,0xBA,0x2,0xE,0x3,0x1,0x0
	.DB  0x94,0x2,0x1,0x0,0xC,0x2,0x4C,0x2
	.DB  0xEE,0x1,0x1,0x0,0x1,0x0,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0xA0,0x1,0x1,0x0,0xB8,0x1
	.DB  0xBA,0x2,0x1,0x0,0xBA,0x2,0xB8,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xEE,0x1
	.DB  0x70,0x3,0x1,0x0,0x70,0x3,0x70,0x3
	.DB  0xE,0x3,0x1,0x0,0xBA,0x2,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0xB8,0x1,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0xA0,0x1,0x1,0x0,0xB8,0x1
	.DB  0xBA,0x2,0x1,0x0,0xBA,0x2,0xB8,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xEE,0x1
	.DB  0xBA,0x2,0x1,0x0,0xBA,0x2,0xBA,0x2
	.DB  0x94,0x2,0x1,0x0,0x4C,0x2,0x87,0x1
	.DB  0x4A,0x1,0x1,0x0,0x4A,0x1,0x6,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0xA0,0x1,0x1,0x0,0xB8,0x1
	.DB  0xBA,0x2,0x1,0x0,0xBA,0x2,0xB8,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xEE,0x1
	.DB  0x70,0x3,0x1,0x0,0x70,0x3,0x70,0x3
	.DB  0xE,0x3,0x1,0x0,0xBA,0x2,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0xB8,0x1,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0xA0,0x1,0x1,0x0,0xB8,0x1
	.DB  0xBA,0x2,0x1,0x0,0xBA,0x2,0xB8,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xEE,0x1
	.DB  0xBA,0x2,0x1,0x0,0xBA,0x2,0xBA,0x2
	.DB  0x94,0x2,0x1,0x0,0x4C,0x2,0x87,0x1
	.DB  0x4A,0x1,0x1,0x0,0x4A,0x1,0x6,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xC,0x2
	.DB  0xC,0x2,0x1,0x0,0xC,0x2,0x1,0x0
	.DB  0xC,0x2,0x4C,0x2,0x1,0x0,0x94,0x2
	.DB  0xC,0x2,0x1,0x0,0xB8,0x1,0x87,0x1
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0xC,0x2
	.DB  0xC,0x2,0x1,0x0,0xC,0x2,0x1,0x0
	.DB  0xC,0x2,0x4C,0x2,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x1,0x0,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xC,0x2,0xC,0x2
	.DB  0x1,0x0,0xC,0x2,0x1,0x0,0xC,0x2
	.DB  0x4C,0x2,0x1,0x0,0x94,0x2,0xC,0x2
	.DB  0x1,0x0,0xB8,0x1,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x94,0x2,0x94,0x2
	.DB  0x1,0x0,0x94,0x2,0x1,0x0,0xC,0x2
	.DB  0x94,0x2,0x1,0x0,0xE,0x3,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x94,0x2,0xC,0x2
	.DB  0x1,0x0,0x87,0x1,0x1,0x0,0x1,0x0
	.DB  0xA0,0x1,0x1,0x0,0xB8,0x1,0xBA,0x2
	.DB  0x1,0x0,0xBA,0x2,0xB8,0x1,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xEE,0x1,0x70,0x3
	.DB  0x1,0x0,0x70,0x3,0x70,0x3,0xE,0x3
	.DB  0x1,0x0,0xBA,0x2,0x94,0x2,0xC,0x2
	.DB  0x1,0x0,0xB8,0x1,0x87,0x1,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x94,0x2,0xC,0x2
	.DB  0x1,0x0,0x87,0x1,0x1,0x0,0x1,0x0
	.DB  0xA0,0x1,0x1,0x0,0xB8,0x1,0xBA,0x2
	.DB  0x1,0x0,0xBA,0x2,0xB8,0x1,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0xEE,0x1,0xBA,0x2
	.DB  0x1,0x0,0xBA,0x2,0xBA,0x2,0x94,0x2
	.DB  0x1,0x0,0x4C,0x2,0x87,0x1,0x4A,0x1
	.DB  0x1,0x0,0x4A,0x1,0x6,0x1,0x1,0x0
	.DB  0x1,0x0,0x1,0x0,0x0,0x0
_tbl10_G100:
	.DB  0x10,0x27,0xE8,0x3,0x64,0x0,0xA,0x0
	.DB  0x1,0x0
_tbl16_G100:
	.DB  0x0,0x10,0x0,0x1,0x10,0x0,0x1,0x0

_0x3:
	.DB  0x3,0x3,0x3,0x2,0x2,0xC,0x0,0x8
	.DB  0x0,0x1,0x0,0x6
_0x28:
	.DB  0xE,0x1D,0x1E,0x1C,0x1E,0x1F,0xE
_0x29:
	.DB  0xE,0x1D,0x1F,0x1E,0x1F,0x1F,0xE
_0x2A:
	.DB  0xE,0x17,0xF,0x7,0xF,0x1F,0xE
_0x2B:
	.DB  0xE,0x17,0x1F,0xF,0x1F,0x1F,0xE
_0x0:
	.DB  0x48,0x65,0x6C,0x6C,0x6F,0x0,0x4D,0x72
	.DB  0x2E,0x20,0x50,0x61,0x63,0x4D,0x61,0x6E
	.DB  0x0

__GLOBAL_INI_TBL:
	.DW  0x07
	.DW  _PacMan1
	.DW  _0x28*2

	.DW  0x07
	.DW  _PacMan2
	.DW  _0x29*2

	.DW  0x07
	.DW  _PacMan3
	.DW  _0x2A*2

	.DW  0x07
	.DW  _PacMan4
	.DW  _0x2B*2

_0xFFFFFFFF:
	.DW  0

#define __GLOBAL_INI_TBL_PRESENT 1

__RESET:
	CLI
	CLR  R30
	OUT  EECR,R30

;INTERRUPT VECTORS ARE PLACED
;AT THE START OF FLASH
	LDI  R31,1
	OUT  MCUCR,R31
	OUT  MCUCR,R30

;CLEAR R2-R14
	LDI  R24,(14-2)+1
	LDI  R26,2
	CLR  R27
__CLEAR_REG:
	ST   X+,R30
	DEC  R24
	BRNE __CLEAR_REG

;CLEAR SRAM
	LDI  R24,LOW(__CLEAR_SRAM_SIZE)
	LDI  R25,HIGH(__CLEAR_SRAM_SIZE)
	LDI  R26,LOW(__SRAM_START)
	LDI  R27,HIGH(__SRAM_START)
__CLEAR_SRAM:
	ST   X+,R30
	SBIW R24,1
	BRNE __CLEAR_SRAM

;GLOBAL VARIABLES INITIALIZATION
	LDI  R30,LOW(__GLOBAL_INI_TBL*2)
	LDI  R31,HIGH(__GLOBAL_INI_TBL*2)
__GLOBAL_INI_NEXT:
	LPM  R24,Z+
	LPM  R25,Z+
	SBIW R24,0
	BREQ __GLOBAL_INI_END
	LPM  R26,Z+
	LPM  R27,Z+
	LPM  R0,Z+
	LPM  R1,Z+
	MOVW R22,R30
	MOVW R30,R0
__GLOBAL_INI_LOOP:
	LPM  R0,Z+
	ST   X+,R0
	SBIW R24,1
	BRNE __GLOBAL_INI_LOOP
	MOVW R30,R22
	RJMP __GLOBAL_INI_NEXT
__GLOBAL_INI_END:

;GPIOR0 INITIALIZATION
	LDI  R30,__GPIOR0_INIT
	OUT  GPIOR0,R30

;HARDWARE STACK POINTER INITIALIZATION
	LDI  R30,LOW(__SRAM_END-__HEAP_SIZE)
	OUT  SPL,R30
	LDI  R30,HIGH(__SRAM_END-__HEAP_SIZE)
	OUT  SPH,R30

;DATA STACK POINTER INITIALIZATION
	LDI  R28,LOW(__SRAM_START+__DSTACK_SIZE)
	LDI  R29,HIGH(__SRAM_START+__DSTACK_SIZE)

	JMP  _main

	.ESEG
	.ORG 0

	.DSEG
	.ORG 0x300

	.CSEG
;/*
; * PacManMario.c
; * PacMan y Mario juntos con interrupciones
; * Created: 27/04/2018 09:46:00 a. m.
; * Author: Clase Micros
; */
;
;#asm
    .equ __lcd_port=0x0B
    .equ __lcd_EN=1
    .equ __lcd_RS=0
    .equ __lcd_D4=2
    .equ __lcd_D5=3
    .equ __lcd_D6=4
    .equ __lcd_D7=5
; 0000 0010 #endasm
;
;#include <io.h>
	#ifndef __SLEEP_DEFINED__
	#define __SLEEP_DEFINED__
	.EQU __se_bit=0x01
	.EQU __sm_mask=0x0E
	.EQU __sm_adc_noise_red=0x02
	.EQU __sm_powerdown=0x04
	.EQU __sm_powersave=0x06
	.EQU __sm_standby=0x0C
	.EQU __sm_ext_standby=0x0E
	.SET power_ctrl_reg=smcr
	#endif
;#include <delay.h>
;#include <display.h>

	.CSEG
_SetupLCD:
; .FSTART _SetupLCD
	SBIW R28,12
	LDI  R24,12
	LDI  R26,LOW(0)
	LDI  R27,HIGH(0)
	LDI  R30,LOW(_0x3*2)
	LDI  R31,HIGH(_0x3*2)
	CALL __INITLOCB
	ST   -Y,R16
;	TableSetup -> Y+1
;	i -> R16
; 0000 0014     SBI __lcd_port-1,__lcd_EN
    SBI __lcd_port-1,__lcd_EN
    SBI __lcd_port-1,__lcd_RS
    SBI __lcd_port-1,__lcd_D4
    SBI __lcd_port-1,__lcd_D5
    SBI __lcd_port-1,__lcd_D6
    SBI __lcd_port-1,__lcd_D7
	LDI  R26,LOW(50)
	LDI  R27,0
	CALL _delay_ms
	LDI  R16,LOW(0)
_0x5:
	CPI  R16,12
	BRSH _0x6
	CALL SUBOPT_0x0
	MOV  R30,R16
	LDI  R31,0
	MOVW R26,R28
	ADIW R26,1
	ADD  R26,R30
	ADC  R27,R31
	LD   R26,X
	CALL SUBOPT_0x1
	SUBI R16,-1
	RJMP _0x5
_0x6:
	LDI  R30,LOW(12)
	STS  _cursor,R30
	LDS  R26,_cursor
	RCALL _WriteComandLCD
	LDD  R16,Y+0
	ADIW R28,13
	RET
; .FEND
_PulseEn:
; .FSTART _PulseEn
    SBI __lcd_port,__lcd_EN  // EN=1;
    CBI __lcd_port,__lcd_EN // EN=0;
	RET
; .FEND
_SendDataBitsLCD:
; .FSTART _SendDataBitsLCD
	ST   -Y,R26
;	dato -> Y+0
	LD   R30,Y
	ANDI R30,LOW(0x8)
	BREQ _0x7
	SBI __lcd_port,__lcd_D7
	RJMP _0x8
_0x7:
	CBI __lcd_port,__lcd_D7
_0x8:
	LD   R30,Y
	ANDI R30,LOW(0x4)
	BREQ _0x9
	SBI __lcd_port,__lcd_D6
	RJMP _0xA
_0x9:
	CBI __lcd_port,__lcd_D6
_0xA:
	LD   R30,Y
	ANDI R30,LOW(0x2)
	BREQ _0xB
	SBI __lcd_port,__lcd_D5
	RJMP _0xC
_0xB:
	CBI __lcd_port,__lcd_D5
_0xC:
	LD   R30,Y
	ANDI R30,LOW(0x1)
	BREQ _0xD
	SBI __lcd_port,__lcd_D4
	RJMP _0xE
_0xD:
	CBI __lcd_port,__lcd_D4
_0xE:
	RJMP _0x2060001
; .FEND
_WriteComandLCD:
; .FSTART _WriteComandLCD
	ST   -Y,R26
	ST   -Y,R16
;	Comando -> Y+1
;	tempComando -> R16
	CBI __lcd_port,__lcd_RS
	CALL SUBOPT_0x0
	CALL SUBOPT_0x2
	CALL SUBOPT_0x3
	RCALL _PulseEn
	LDD  R16,Y+0
	RJMP _0x2060002
; .FEND
_CharLCD:
; .FSTART _CharLCD
	ST   -Y,R26
	ST   -Y,R16
;	dato -> Y+1
;	tempdato -> R16
	SBI __lcd_port,__lcd_RS
	CALL SUBOPT_0x0
	CALL SUBOPT_0x2
	CALL SUBOPT_0x3
	RCALL _PulseEn
	LDD  R16,Y+0
	RJMP _0x2060002
; .FEND
_StringLCD:
; .FSTART _StringLCD
	ST   -Y,R27
	ST   -Y,R26
	ST   -Y,R16
;	i -> R16
	LDI  R16,LOW(0)
_0x10:
	MOV  R30,R16
	SUBI R16,-1
	LDD  R26,Y+1
	LDD  R27,Y+1+1
	LDI  R31,0
	ADD  R30,R26
	ADC  R31,R27
	LPM  R26,Z
	RCALL _CharLCD
	MOV  R30,R16
	LDD  R26,Y+1
	LDD  R27,Y+1+1
	LDI  R31,0
	ADD  R30,R26
	ADC  R31,R27
	LPM  R30,Z
	CPI  R30,0
	BRNE _0x10
	LDD  R16,Y+0
	ADIW R28,3
	RET
; .FEND
;	tiempo -> Y+1
;	i -> R16
;	Mensaje -> Y+1
;	i -> R16
_MoveCursor:
; .FSTART _MoveCursor
	ST   -Y,R26
;	x -> Y+1
;	y -> Y+0
	LD   R30,Y
	LDI  R31,0
	SBIW R30,0
	BRNE _0x1B
	LDD  R26,Y+1
	SUBI R26,-LOW(128)
	RJMP _0x3B
_0x1B:
	CPI  R30,LOW(0x1)
	LDI  R26,HIGH(0x1)
	CPC  R31,R26
	BRNE _0x1C
	LDD  R26,Y+1
	SUBI R26,-LOW(192)
	RJMP _0x3B
_0x1C:
	CPI  R30,LOW(0x2)
	LDI  R26,HIGH(0x2)
	CPC  R31,R26
	BRNE _0x1D
	LDD  R26,Y+1
	SUBI R26,-LOW(148)
	RJMP _0x3B
_0x1D:
	CPI  R30,LOW(0x3)
	LDI  R26,HIGH(0x3)
	CPC  R31,R26
	BRNE _0x1A
	LDD  R26,Y+1
	SUBI R26,-LOW(212)
_0x3B:
	RCALL _WriteComandLCD
_0x1A:
_0x2060002:
	ADIW R28,2
	RET
; .FEND
_CreateChar:
; .FSTART _CreateChar
	ST   -Y,R27
	ST   -Y,R26
	ST   -Y,R16
;	NoCaracter -> Y+3
;	datos -> Y+1
;	i -> R16
	LDD  R30,Y+3
	LSL  R30
	LSL  R30
	LSL  R30
	SUBI R30,-LOW(64)
	MOV  R26,R30
	RCALL _WriteComandLCD
	LDI  R16,LOW(0)
_0x20:
	CPI  R16,8
	BRSH _0x21
	LDD  R26,Y+1
	LDD  R27,Y+1+1
	CLR  R30
	ADD  R26,R16
	ADC  R27,R30
	LD   R26,X
	RCALL _CharLCD
	SUBI R16,-1
	RJMP _0x20
_0x21:
	LDI  R26,LOW(128)
	RCALL _WriteComandLCD
	LDD  R16,Y+0
	ADIW R28,4
	RET
; .FEND
;#include <stdio.h>
;
;flash int du=262,re= 294, ri=312, mi =330,fa=349, fi=370, sol=391,si=416, la=440, li=467, ti=494;
;flash int MarioBros[591]={mi*2,mi*2,1,mi*2,1,du*2,mi*2,1,sol*2,1,1,1,sol,1,1,1,du*2,1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1 ...
;1,mi*2,1,du*2,re*2,ti,1,1,du*2,1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1,sol,mi*2,1,sol*2,la*2,1,fa*2,sol*2,1,mi*2,1,du*2,re* ...
;mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,du*4,1,du*4,du*4,1,1,1,1,1,sol*2,fi*2,fa*2,ri*2,1,mi* ...
;ri*2,1,1,re*2,1,1,du*2,1,1,1,1,1,1,1,1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,sol*2,fi*2,fa*2,ri* ...
;1,1,sol*2,fi*2,fa*2,ri*2,1,mi*2,1,si,la,du*2,1,la,du*2,re*2,1,1,ri*2,1,1,re*2,1,1,du*2,1,1,1,1,1,1,1,du*2,du*2,1,du*2,1, ...
;du*2,du*2,1,du*2,1,du*2,re*2,1,1,1,1,1,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,mi*2,du*2,1,la,sol,1,1,1,mi*2,mi*2,1,mi*2,1, ...
;1,1,sol,1,1,mi,1,1,la,1,ti,1,li,la,1,sol,mi*2,1,sol*2,la*2,1,fa*2,sol*2,1,mi*2,1,du*2,re*2,ti,1,1,du*2,1,1,sol,1,1,mi,1, ...
;la*2,1,fa*2,sol*2,1,mi*2,1,du*2,re*2,ti,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,la*2,1,la*2,la*2,sol*2,1 ...
;1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,fa*2,1,fa*2,fa*2,mi*2,1,re*2,sol,mi,1,mi,du,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la, ...
;sol*2,1,fa*2,mi*2,du*2,1,la,sol,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,fa*2,1,fa*2,fa*2,mi*2,1,re*2,s ...
;du*2,re*2,1,mi*2,du*2,1,la,sol,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,1,1,1,1,1,1,1,du*2,du*2,1,du*2,1,du*2,re*2,1,mi*2,du ...
;mi*2,1,sol*2,1,1,1,sol,1,1,1,mi*2,du*2,1,sol,1,1,si,1,la,fa*2,1,fa*2,la,1,1,1,ti,la*2,1,la*2,la*2,sol*2,1,fa*2,mi*2,du*2 ...
;fa*2,1,fa*2,la,1,1,1,ti,fa*2,1,fa*2,fa*2,mi*2,1,re*2,sol,mi,1,mi,du,1,1,1,0};
;
;void tono (float f)
; 0000 0027 {
_tono:
; .FSTART _tono
; 0000 0028     float Cuentas;
; 0000 0029     unsigned int CuentasEnt;
; 0000 002A 
; 0000 002B     Cuentas=500000.0/f;
	CALL __PUTPARD2
	SBIW R28,4
	ST   -Y,R17
	ST   -Y,R16
;	f -> Y+6
;	Cuentas -> Y+2
;	CuentasEnt -> R16,R17
	__GETD1S 6
	__GETD2N 0x48F42400
	CALL __DIVF21
	__PUTD1S 2
; 0000 002C     CuentasEnt=Cuentas;
	CALL __CFD1U
	MOVW R16,R30
; 0000 002D     if ((Cuentas-CuentasEnt)>=0.5)  //Redondear
	__GETD2S 2
	CLR  R22
	CLR  R23
	CALL __CDF1
	CALL __SWAPD12
	CALL __SUBF12
	MOVW R26,R30
	MOVW R24,R22
	__GETD1N 0x3F000000
	CALL __CMPF12
	BRLO _0x22
; 0000 002E        CuentasEnt++;
	__ADDWRN 16,17,1
; 0000 002F     TCCR1A=0x40;
_0x22:
	LDI  R30,LOW(64)
	STS  128,R30
; 0000 0030     TCCR1B=0x09;
	LDI  R30,LOW(9)
	STS  129,R30
; 0000 0031     OCR1AH=(CuentasEnt-1)>>8;
	MOVW R30,R16
	SBIW R30,1
	MOV  R30,R31
	LDI  R31,0
	STS  137,R30
; 0000 0032     OCR1AL=(CuentasEnt-1)&0xFF;
	MOV  R30,R16
	SUBI R30,LOW(1)
	STS  136,R30
; 0000 0033 }
	LDD  R17,Y+1
	LDD  R16,Y+0
	ADIW R28,10
	RET
; .FEND
;
;void noTono()
; 0000 0036 {
_noTono:
; .FSTART _noTono
; 0000 0037     TCCR1A=0x00;
	LDI  R30,LOW(0)
	STS  128,R30
; 0000 0038     TCCR1B=0x00;
	STS  129,R30
; 0000 0039     PORTB.1=0;  //Apaga puerto manualmente
	CBI  0x5,1
; 0000 003A }
	RET
; .FEND
;
;unsigned int j;
;
;// Voltage Reference: AVCC pin
;#define ADC_VREF_TYPE ((0<<REFS1) | (1<<REFS0) | (0<<ADLAR))
;
;// Read the AD conversion result
;unsigned int read_adc(unsigned char adc_input)
; 0000 0043 {
_read_adc:
; .FSTART _read_adc
; 0000 0044     ADMUX=adc_input | ADC_VREF_TYPE;
	ST   -Y,R26
;	adc_input -> Y+0
	LD   R30,Y
	ORI  R30,0x40
	STS  124,R30
; 0000 0045     // Delay needed for the stabilization of the ADC input voltage
; 0000 0046     delay_us(10);
	__DELAY_USB 3
; 0000 0047     // Start the AD conversion
; 0000 0048     ADCSRA|=(1<<ADSC);
	LDS  R30,122
	ORI  R30,0x40
	STS  122,R30
; 0000 0049     // Wait for the AD conversion to complete
; 0000 004A     while ((ADCSRA & (1<<ADIF))==0);
_0x25:
	LDS  R30,122
	ANDI R30,LOW(0x10)
	BREQ _0x25
; 0000 004B     ADCSRA|=(1<<ADIF);
	LDS  R30,122
	ORI  R30,0x10
	STS  122,R30
; 0000 004C     return ADCW;
	LDS  R30,120
	LDS  R31,120+1
_0x2060001:
	ADIW R28,1
	RET
; 0000 004D }
; .FEND
;
;void DelayPacman()
; 0000 0050 {
_DelayPacman:
; .FSTART _DelayPacman
; 0000 0051     delay_ms(read_adc(0));
	LDI  R26,LOW(0)
	RCALL _read_adc
	MOVW R26,R30
	CALL _delay_ms
; 0000 0052 }
	RET
; .FEND
;
;unsigned char PacMan1[8]={0x0E,0x1D,0x1E,0x1C,0x1E,0x1F,0x0E,0x00};

	.DSEG
;unsigned char PacMan2[8]={0x0E,0x1D,0x1F,0x1E,0x1F,0x1F,0x0E,0x00};
;unsigned char PacMan3[8]={0x0E,0x17,0x0F,0x07,0x0F,0x1F,0x0E,0x00};
;unsigned char PacMan4[8]={0x0E,0x17,0x1F,0x0F,0x1F,0x1F,0x0E,0x00};
;
;signed char i;  //rango de valores de -128 a +127
;
;interrupt [TIM2_COMPA] void nota (void)
; 0000 005C {

	.CSEG
_nota:
; .FSTART _nota
	ST   -Y,R0
	ST   -Y,R1
	ST   -Y,R15
	ST   -Y,R22
	ST   -Y,R23
	ST   -Y,R24
	ST   -Y,R25
	ST   -Y,R26
	ST   -Y,R27
	ST   -Y,R30
	ST   -Y,R31
	IN   R30,SREG
	ST   -Y,R30
; 0000 005D     if (MarioBros[j]!=1)
	CALL SUBOPT_0x4
	CALL __GETW2PF
	SBIW R26,1
	BREQ _0x2C
; 0000 005E         tono(MarioBros[j]);
	CALL SUBOPT_0x4
	CALL __GETW1PF
	CALL __CWD1
	CALL __CDF1
	MOVW R26,R30
	MOVW R24,R22
	RCALL _tono
; 0000 005F     else
	RJMP _0x2D
_0x2C:
; 0000 0060         noTono();
	RCALL _noTono
; 0000 0061     j++;
_0x2D:
	LDI  R26,LOW(_j)
	LDI  R27,HIGH(_j)
	LD   R30,X+
	LD   R31,X+
	ADIW R30,1
	ST   -X,R31
	ST   -X,R30
; 0000 0062     if (j==591)
	LDS  R26,_j
	LDS  R27,_j+1
	CPI  R26,LOW(0x24F)
	LDI  R30,HIGH(0x24F)
	CPC  R27,R30
	BRNE _0x2E
; 0000 0063         j=0;
	LDI  R30,LOW(0)
	STS  _j,R30
	STS  _j+1,R30
; 0000 0064 }
_0x2E:
	LD   R30,Y+
	OUT  SREG,R30
	LD   R31,Y+
	LD   R30,Y+
	LD   R27,Y+
	LD   R26,Y+
	LD   R25,Y+
	LD   R24,Y+
	LD   R23,Y+
	LD   R22,Y+
	LD   R15,Y+
	LD   R1,Y+
	LD   R0,Y+
	RETI
; .FEND
;
;void main(void)
; 0000 0067 {
_main:
; .FSTART _main
; 0000 0068     DDRB.1=1;   //PB1 de salida (bocina)
	SBI  0x4,1
; 0000 0069     TCCR2A = 0x02;  //Modo de CTC
	LDI  R30,LOW(2)
	STS  176,R30
; 0000 006A     TCCR2B = 0x07;  //Con CK/1024 PARA CONTEO DE 0.1 SEG
	LDI  R30,LOW(7)
	STS  177,R30
; 0000 006B     OCR2A = 97;
	LDI  R30,LOW(97)
	STS  179,R30
; 0000 006C     TIMSK2 = 0x02;  //Habilitar interrucion
	LDI  R30,LOW(2)
	STS  112,R30
; 0000 006D     #asm("SET")
	SET
; 0000 006E     // ADC initialization
; 0000 006F     // ADC Clock frequency: 125.000 kHz
; 0000 0070     // ADC Voltage Reference: AVCC pin
; 0000 0071     // ADC Auto Trigger Source: ADC Stopped
; 0000 0072     // Digital input buffers on ADC0: Off, ADC1: On, ADC2: On, ADC3: On
; 0000 0073     // ADC4: On, ADC5: On
; 0000 0074     DIDR0=(0<<ADC5D) | (0<<ADC4D) | (0<<ADC3D) | (0<<ADC2D) | (0<<ADC1D) | (1<<ADC0D);
	LDI  R30,LOW(1)
	STS  126,R30
; 0000 0075     ADMUX=ADC_VREF_TYPE;
	LDI  R30,LOW(64)
	STS  124,R30
; 0000 0076     ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (0<<ADPS2) | (1<<ADPS1) | (1<<ADPS0);
	LDI  R30,LOW(131)
	STS  122,R30
; 0000 0077     ADCSRB=(0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);
	LDI  R30,LOW(0)
	STS  123,R30
; 0000 0078     SetupLCD();
	CALL _SetupLCD
; 0000 0079     CreateChar(0,PacMan1);
	LDI  R30,LOW(0)
	ST   -Y,R30
	LDI  R26,LOW(_PacMan1)
	LDI  R27,HIGH(_PacMan1)
	RCALL _CreateChar
; 0000 007A     CreateChar(1,PacMan2);
	LDI  R30,LOW(1)
	ST   -Y,R30
	LDI  R26,LOW(_PacMan2)
	LDI  R27,HIGH(_PacMan2)
	RCALL _CreateChar
; 0000 007B     CreateChar(2,PacMan3);
	LDI  R30,LOW(2)
	ST   -Y,R30
	LDI  R26,LOW(_PacMan3)
	LDI  R27,HIGH(_PacMan3)
	RCALL _CreateChar
; 0000 007C     CreateChar(3,PacMan4);
	LDI  R30,LOW(3)
	ST   -Y,R30
	LDI  R26,LOW(_PacMan4)
	LDI  R27,HIGH(_PacMan4)
	RCALL _CreateChar
; 0000 007D 
; 0000 007E     while (1)
_0x31:
; 0000 007F     {
; 0000 0080        MoveCursor(5,0);
	LDI  R30,LOW(5)
	CALL SUBOPT_0x5
; 0000 0081        StringLCD("Hello");
	__POINTW2FN _0x0,0
	RCALL _StringLCD
; 0000 0082        MoveCursor(3,1);
	LDI  R30,LOW(3)
	CALL SUBOPT_0x6
; 0000 0083        StringLCD("Mr. PacMan");
	__POINTW2FN _0x0,6
	RCALL _StringLCD
; 0000 0084 
; 0000 0085        for (i=0;i<16;i++)
	LDI  R30,LOW(0)
	STS  _i,R30
_0x35:
	LDS  R26,_i
	CPI  R26,LOW(0x10)
	BRGE _0x36
; 0000 0086        {
; 0000 0087           MoveCursor(i,0);   //Paso 1
	CALL SUBOPT_0x7
; 0000 0088           CharLCD(0);        //Paso 2
	LDI  R26,LOW(0)
	CALL SUBOPT_0x8
; 0000 0089           DelayPacman();
; 0000 008A           MoveCursor(i,0);   //Paso 3
; 0000 008B           CharLCD(1);        //Paso 4
	LDI  R26,LOW(1)
	CALL SUBOPT_0x8
; 0000 008C           DelayPacman();
; 0000 008D           MoveCursor(i,0);   //Paso 5
; 0000 008E           CharLCD(' ');      //Paso 6
	LDI  R26,LOW(32)
	RCALL _CharLCD
; 0000 008F        }
	LDS  R30,_i
	SUBI R30,-LOW(1)
	STS  _i,R30
	RJMP _0x35
_0x36:
; 0000 0090 
; 0000 0091        for (i=15;i>=0;i--)
	LDI  R30,LOW(15)
	STS  _i,R30
_0x38:
	LDS  R26,_i
	CPI  R26,0
	BRLT _0x39
; 0000 0092        {
; 0000 0093             MoveCursor(i,1);   //Paso 1
	CALL SUBOPT_0x9
; 0000 0094             CharLCD(2);        //Paso 2
	LDI  R26,LOW(2)
	CALL SUBOPT_0xA
; 0000 0095             DelayPacman();
; 0000 0096             MoveCursor(i,1);   //Paso 3
; 0000 0097             CharLCD(3);        //Paso 4
	LDI  R26,LOW(3)
	CALL SUBOPT_0xA
; 0000 0098             DelayPacman();
; 0000 0099             MoveCursor(i,1);   //Paso 5
; 0000 009A             CharLCD(' ');      //Paso 6
	LDI  R26,LOW(32)
	RCALL _CharLCD
; 0000 009B        }
	LDS  R30,_i
	SUBI R30,LOW(1)
	STS  _i,R30
	RJMP _0x38
_0x39:
; 0000 009C     }
	RJMP _0x31
; 0000 009D }
_0x3A:
	RJMP _0x3A
; .FEND
	#ifndef __SLEEP_DEFINED__
	#define __SLEEP_DEFINED__
	.EQU __se_bit=0x01
	.EQU __sm_mask=0x0E
	.EQU __sm_adc_noise_red=0x02
	.EQU __sm_powerdown=0x04
	.EQU __sm_powersave=0x06
	.EQU __sm_standby=0x0C
	.EQU __sm_ext_standby=0x0E
	.SET power_ctrl_reg=smcr
	#endif

	.CSEG

	.CSEG

	.CSEG

	.DSEG
_cursor:
	.BYTE 0x1
_j:
	.BYTE 0x2
_PacMan1:
	.BYTE 0x8
_PacMan2:
	.BYTE 0x8
_PacMan3:
	.BYTE 0x8
_PacMan4:
	.BYTE 0x8
_i:
	.BYTE 0x1

	.CSEG
;OPTIMIZER ADDED SUBROUTINE, CALLED 5 TIMES, CODE SIZE REDUCTION:5 WORDS
SUBOPT_0x0:
	LDI  R26,LOW(2)
	LDI  R27,0
	JMP  _delay_ms

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x1:
	CALL _SendDataBitsLCD
	JMP  _PulseEn

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:3 WORDS
SUBOPT_0x2:
	LDD  R30,Y+1
	ANDI R30,LOW(0xF0)
	MOV  R16,R30
	SWAP R16
	ANDI R16,0xF
	MOV  R26,R16
	RJMP SUBOPT_0x1

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:3 WORDS
SUBOPT_0x3:
	LDD  R30,Y+1
	ANDI R30,LOW(0xF)
	MOV  R16,R30
	MOV  R26,R16
	CALL _SendDataBitsLCD
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:5 WORDS
SUBOPT_0x4:
	LDS  R30,_j
	LDS  R31,_j+1
	LDI  R26,LOW(_MarioBros*2)
	LDI  R27,HIGH(_MarioBros*2)
	LSL  R30
	ROL  R31
	ADD  R30,R26
	ADC  R31,R27
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:3 WORDS
SUBOPT_0x5:
	ST   -Y,R30
	LDI  R26,LOW(0)
	JMP  _MoveCursor

;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:3 WORDS
SUBOPT_0x6:
	ST   -Y,R30
	LDI  R26,LOW(1)
	JMP  _MoveCursor

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x7:
	LDS  R30,_i
	RJMP SUBOPT_0x5

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x8:
	CALL _CharLCD
	CALL _DelayPacman
	RJMP SUBOPT_0x7

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x9:
	LDS  R30,_i
	RJMP SUBOPT_0x6

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0xA:
	CALL _CharLCD
	CALL _DelayPacman
	RJMP SUBOPT_0x9


	.CSEG
_delay_ms:
	adiw r26,0
	breq __delay_ms1
__delay_ms0:
	__DELAY_USW 0xFA
	wdr
	sbiw r26,1
	brne __delay_ms0
__delay_ms1:
	ret

__ROUND_REPACK:
	TST  R21
	BRPL __REPACK
	CPI  R21,0x80
	BRNE __ROUND_REPACK0
	SBRS R30,0
	RJMP __REPACK
__ROUND_REPACK0:
	ADIW R30,1
	ADC  R22,R25
	ADC  R23,R25
	BRVS __REPACK1

__REPACK:
	LDI  R21,0x80
	EOR  R21,R23
	BRNE __REPACK0
	PUSH R21
	RJMP __ZERORES
__REPACK0:
	CPI  R21,0xFF
	BREQ __REPACK1
	LSL  R22
	LSL  R0
	ROR  R21
	ROR  R22
	MOV  R23,R21
	RET
__REPACK1:
	PUSH R21
	TST  R0
	BRMI __REPACK2
	RJMP __MAXRES
__REPACK2:
	RJMP __MINRES

__UNPACK:
	LDI  R21,0x80
	MOV  R1,R25
	AND  R1,R21
	LSL  R24
	ROL  R25
	EOR  R25,R21
	LSL  R21
	ROR  R24

__UNPACK1:
	LDI  R21,0x80
	MOV  R0,R23
	AND  R0,R21
	LSL  R22
	ROL  R23
	EOR  R23,R21
	LSL  R21
	ROR  R22
	RET

__CFD1U:
	SET
	RJMP __CFD1U0
__CFD1:
	CLT
__CFD1U0:
	PUSH R21
	RCALL __UNPACK1
	CPI  R23,0x80
	BRLO __CFD10
	CPI  R23,0xFF
	BRCC __CFD10
	RJMP __ZERORES
__CFD10:
	LDI  R21,22
	SUB  R21,R23
	BRPL __CFD11
	NEG  R21
	CPI  R21,8
	BRTC __CFD19
	CPI  R21,9
__CFD19:
	BRLO __CFD17
	SER  R30
	SER  R31
	SER  R22
	LDI  R23,0x7F
	BLD  R23,7
	RJMP __CFD15
__CFD17:
	CLR  R23
	TST  R21
	BREQ __CFD15
__CFD18:
	LSL  R30
	ROL  R31
	ROL  R22
	ROL  R23
	DEC  R21
	BRNE __CFD18
	RJMP __CFD15
__CFD11:
	CLR  R23
__CFD12:
	CPI  R21,8
	BRLO __CFD13
	MOV  R30,R31
	MOV  R31,R22
	MOV  R22,R23
	SUBI R21,8
	RJMP __CFD12
__CFD13:
	TST  R21
	BREQ __CFD15
__CFD14:
	LSR  R23
	ROR  R22
	ROR  R31
	ROR  R30
	DEC  R21
	BRNE __CFD14
__CFD15:
	TST  R0
	BRPL __CFD16
	RCALL __ANEGD1
__CFD16:
	POP  R21
	RET

__CDF1U:
	SET
	RJMP __CDF1U0
__CDF1:
	CLT
__CDF1U0:
	SBIW R30,0
	SBCI R22,0
	SBCI R23,0
	BREQ __CDF10
	CLR  R0
	BRTS __CDF11
	TST  R23
	BRPL __CDF11
	COM  R0
	RCALL __ANEGD1
__CDF11:
	MOV  R1,R23
	LDI  R23,30
	TST  R1
__CDF12:
	BRMI __CDF13
	DEC  R23
	LSL  R30
	ROL  R31
	ROL  R22
	ROL  R1
	RJMP __CDF12
__CDF13:
	MOV  R30,R31
	MOV  R31,R22
	MOV  R22,R1
	PUSH R21
	RCALL __REPACK
	POP  R21
__CDF10:
	RET

__SWAPACC:
	PUSH R20
	MOVW R20,R30
	MOVW R30,R26
	MOVW R26,R20
	MOVW R20,R22
	MOVW R22,R24
	MOVW R24,R20
	MOV  R20,R0
	MOV  R0,R1
	MOV  R1,R20
	POP  R20
	RET

__UADD12:
	ADD  R30,R26
	ADC  R31,R27
	ADC  R22,R24
	RET

__NEGMAN1:
	COM  R30
	COM  R31
	COM  R22
	SUBI R30,-1
	SBCI R31,-1
	SBCI R22,-1
	RET

__SUBF12:
	PUSH R21
	RCALL __UNPACK
	CPI  R25,0x80
	BREQ __ADDF129
	LDI  R21,0x80
	EOR  R1,R21

__ADDF120:
	CPI  R23,0x80
	BREQ __ADDF128
__ADDF121:
	MOV  R21,R23
	SUB  R21,R25
	BRVS __ADDF1211
	BRPL __ADDF122
	RCALL __SWAPACC
	RJMP __ADDF121
__ADDF122:
	CPI  R21,24
	BRLO __ADDF123
	CLR  R26
	CLR  R27
	CLR  R24
__ADDF123:
	CPI  R21,8
	BRLO __ADDF124
	MOV  R26,R27
	MOV  R27,R24
	CLR  R24
	SUBI R21,8
	RJMP __ADDF123
__ADDF124:
	TST  R21
	BREQ __ADDF126
__ADDF125:
	LSR  R24
	ROR  R27
	ROR  R26
	DEC  R21
	BRNE __ADDF125
__ADDF126:
	MOV  R21,R0
	EOR  R21,R1
	BRMI __ADDF127
	RCALL __UADD12
	BRCC __ADDF129
	ROR  R22
	ROR  R31
	ROR  R30
	INC  R23
	BRVC __ADDF129
	RJMP __MAXRES
__ADDF128:
	RCALL __SWAPACC
__ADDF129:
	RCALL __REPACK
	POP  R21
	RET
__ADDF1211:
	BRCC __ADDF128
	RJMP __ADDF129
__ADDF127:
	SUB  R30,R26
	SBC  R31,R27
	SBC  R22,R24
	BREQ __ZERORES
	BRCC __ADDF1210
	COM  R0
	RCALL __NEGMAN1
__ADDF1210:
	TST  R22
	BRMI __ADDF129
	LSL  R30
	ROL  R31
	ROL  R22
	DEC  R23
	BRVC __ADDF1210

__ZERORES:
	CLR  R30
	CLR  R31
	CLR  R22
	CLR  R23
	POP  R21
	RET

__MINRES:
	SER  R30
	SER  R31
	LDI  R22,0x7F
	SER  R23
	POP  R21
	RET

__MAXRES:
	SER  R30
	SER  R31
	LDI  R22,0x7F
	LDI  R23,0x7F
	POP  R21
	RET

__DIVF21:
	PUSH R21
	RCALL __UNPACK
	CPI  R23,0x80
	BRNE __DIVF210
	TST  R1
__DIVF211:
	BRPL __DIVF219
	RJMP __MINRES
__DIVF219:
	RJMP __MAXRES
__DIVF210:
	CPI  R25,0x80
	BRNE __DIVF218
__DIVF217:
	RJMP __ZERORES
__DIVF218:
	EOR  R0,R1
	SEC
	SBC  R25,R23
	BRVC __DIVF216
	BRLT __DIVF217
	TST  R0
	RJMP __DIVF211
__DIVF216:
	MOV  R23,R25
	PUSH R17
	PUSH R18
	PUSH R19
	PUSH R20
	CLR  R1
	CLR  R17
	CLR  R18
	CLR  R19
	CLR  R20
	CLR  R21
	LDI  R25,32
__DIVF212:
	CP   R26,R30
	CPC  R27,R31
	CPC  R24,R22
	CPC  R20,R17
	BRLO __DIVF213
	SUB  R26,R30
	SBC  R27,R31
	SBC  R24,R22
	SBC  R20,R17
	SEC
	RJMP __DIVF214
__DIVF213:
	CLC
__DIVF214:
	ROL  R21
	ROL  R18
	ROL  R19
	ROL  R1
	ROL  R26
	ROL  R27
	ROL  R24
	ROL  R20
	DEC  R25
	BRNE __DIVF212
	MOVW R30,R18
	MOV  R22,R1
	POP  R20
	POP  R19
	POP  R18
	POP  R17
	TST  R22
	BRMI __DIVF215
	LSL  R21
	ROL  R30
	ROL  R31
	ROL  R22
	DEC  R23
	BRVS __DIVF217
__DIVF215:
	RCALL __ROUND_REPACK
	POP  R21
	RET

__CMPF12:
	TST  R25
	BRMI __CMPF120
	TST  R23
	BRMI __CMPF121
	CP   R25,R23
	BRLO __CMPF122
	BRNE __CMPF121
	CP   R26,R30
	CPC  R27,R31
	CPC  R24,R22
	BRLO __CMPF122
	BREQ __CMPF123
__CMPF121:
	CLZ
	CLC
	RET
__CMPF122:
	CLZ
	SEC
	RET
__CMPF123:
	SEZ
	CLC
	RET
__CMPF120:
	TST  R23
	BRPL __CMPF122
	CP   R25,R23
	BRLO __CMPF121
	BRNE __CMPF122
	CP   R30,R26
	CPC  R31,R27
	CPC  R22,R24
	BRLO __CMPF122
	BREQ __CMPF123
	RJMP __CMPF121

__ANEGD1:
	COM  R31
	COM  R22
	COM  R23
	NEG  R30
	SBCI R31,-1
	SBCI R22,-1
	SBCI R23,-1
	RET

__CWD1:
	MOV  R22,R31
	ADD  R22,R22
	SBC  R22,R22
	MOV  R23,R22
	RET

__GETW1PF:
	LPM  R0,Z+
	LPM  R31,Z
	MOV  R30,R0
	RET

__GETW2PF:
	LPM  R26,Z+
	LPM  R27,Z
	RET

__PUTPARD2:
	ST   -Y,R25
	ST   -Y,R24
	ST   -Y,R27
	ST   -Y,R26
	RET

__SWAPD12:
	MOV  R1,R24
	MOV  R24,R22
	MOV  R22,R1
	MOV  R1,R25
	MOV  R25,R23
	MOV  R23,R1

__SWAPW12:
	MOV  R1,R27
	MOV  R27,R31
	MOV  R31,R1

__SWAPB12:
	MOV  R1,R26
	MOV  R26,R30
	MOV  R30,R1
	RET

__INITLOCB:
__INITLOCW:
	ADD  R26,R28
	ADC  R27,R29
__INITLOC0:
	LPM  R0,Z+
	ST   X+,R0
	DEC  R24
	BRNE __INITLOC0
	RET

;END OF CODE MARKER
__END_OF_CODE:
