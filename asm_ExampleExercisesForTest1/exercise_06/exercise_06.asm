.686
.model flat

extern _ExitProcess@4	: PROC
public _main

.data

stale	DW	2,1
napis	DW 10 dup (3), 2
tekst	DB 7
		DQ 1

.code
_main PROC
	mov		cx,	napis-1					; cx := 03 00
	sub		tekst, ch					; tekst := 04	07 -> 04
	mov		edi, 1
	mov		tekst[4*edi], ch			; tekst[4] := 03
	mov		ebx, dword PTR tekst+1		; ebx := 03 00 00 01

	; answer:
	; EBX = 03 00 00 01
	; CX  = 03 00
	
	; in memory:
	; 00:	...
	;		02	<- stale
	;		00
	;		01
	;		00		<- napis-1
	;		03	<- napis
	;		00
	;		03
	;		00
	;		...
	;		03
	;		00
	;		02
	;		00
	;  04-> 07	<- tekst
	;		01		<- tekst+1
	;		00
	;		00
	;  03-> 00		<- tekst[4]
	; FF:	...

	push	dword PTR 0
	call	_ExitProcess@4
_main ENDP

END