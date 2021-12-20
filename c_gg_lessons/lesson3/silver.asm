;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module silver
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
	.globl _SMS_VRAMmemcpy
	.globl _GG_loadBGPalette
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _silver_palette
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
;silver.c:12: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;silver.c:13: SMS_loadTiles(silver_tiles, 0, silver_tiles_length);
	ld	hl, (_silver_tiles_length)
	ld	bc, #_silver_tiles+0
	push	hl
	push	bc
	ld	hl, #0x4000
	push	hl
	call	_SMS_VRAMmemcpy
;silver.c:15: SMS_loadTileMap(6, 3, silver_tilemap, silver_tilemap_length);
	ld	hl, (_silver_tilemap_length)
	ld	bc, #_silver_tilemap+0
	push	hl
	push	bc
	ld	hl, #0x78cc
	push	hl
	call	_SMS_VRAMmemcpy
;silver.c:16: GG_loadBGPalette(silver_palette);
	ld	hl, #_silver_palette
	call	_GG_loadBGPalette
;silver.c:18: SMS_displayOn();
	ld	hl, #0x0140
;silver.c:20: }
	jp	_SMS_VDPturnOnFeature
_silver_palette:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x04	; 4
	.db #0x60	; 96
	.db #0x06	; 6
	.db #0x53	; 83	'S'
	.db #0x0b	; 11
	.db #0x6c	; 108	'l'
	.db #0x04	; 4
	.db #0xb0	; 176
	.db #0x0b	; 11
	.db #0x99	; 153
	.db #0x0b	; 11
	.db #0xaa	; 170
	.db #0x0a	; 10
	.db #0xd6	; 214
	.db #0x08	; 8
	.db #0xbb	; 187
	.db #0x0e	; 14
	.db #0xbf	; 191
	.db #0x08	; 8
	.db #0xdf	; 223
	.db #0x00	; 0
	.db #0xdd	; 221
	.db #0x0b	; 11
	.db #0xdd	; 221
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x0f	; 15
__str_0:
	.ascii "Liam Hays"
	.db 0x00
__str_1:
	.ascii "Silver: Lesson 3"
	.db 0x00
__str_2:
	.ascii "Silver the Hedgehog on screen"
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
	.org 0x7FC5
___SMS__SDSC_name:
	.ascii "Silver: Lesson 3"
	.db 0x00
	.org 0x7FA7
___SMS__SDSC_descr:
	.ascii "Silver the Hedgehog on screen"
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
	.db #0xc5	; 197
	.db #0x7f	; 127
	.db #0xa7	; 167
	.db #0x7f	; 127
