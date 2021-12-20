;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module helloworld
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _main
	.globl _puts
	.globl _printf
	.globl _SMS_autoSetUpTextRenderer
	.globl _SMS_crt0_RST08
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;helloworld.c:10: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;helloworld.c:11: SMS_autoSetUpTextRenderer();
	call	_SMS_autoSetUpTextRenderer
;helloworld.c:12: SMS_setNextTileatXY(6,3);
	ld	hl, #0x78cc
	rst	#0x08
;helloworld.c:14: printf("In the beginning\n");
	ld	hl, #___str_4
	push	hl
	call	_puts
;helloworld.c:15: printf("Groop %d", 5);
	ld	hl, #0x0005
	ex	(sp),hl
	ld	hl, #___str_5
	push	hl
	call	_printf
	pop	af
	pop	af
;helloworld.c:16: }
	ret
__str_0:
	.ascii "Liam Hays"
	.db 0x00
__str_1:
	.ascii "Hello World"
	.db 0x00
__str_2:
	.ascii "Introduction to SMSlib programming"
	.db 0x00
___str_4:
	.ascii "In the beginning"
	.db 0x00
___str_5:
	.ascii "Groop %d"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x7c	; 124
	.org 0x7FD6
___SMS__SDSC_author:
	.ascii "Liam Hays"
	.db 0x00
	.org 0x7FCA
___SMS__SDSC_name:
	.ascii "Hello World"
	.db 0x00
	.org 0x7FA7
___SMS__SDSC_descr:
	.ascii "Introduction to SMSlib programming"
	.db 0x00
	.org 0x7FE0
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xd6	; 214
	.db #0x7f	; 127
	.db #0xca	; 202
	.db #0x7f	; 127
	.db #0xa7	; 167
	.db #0x7f	; 127
