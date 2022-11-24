.686
.model flat

extern _ExitProcess@4	: PROC
public _main

.data

.code
_main PROC
	xor		eax, eax
	sub		eax, 0FFFFFFFFh
	
	; answer:
	; OF = 0, CF = 1, ZF = 0

	; xor CF and l = OF
	; CF l
	;  1 1 1 1 1...1 1 1 2      <- moving
	;	0 0 0 0 ... 0 0 0 0
	; -	1 1 1 1 ... 1 1 1 1
	;  ---------------------
	;   0 0 0 0 ... 0 0 0 1

	push	dword PTR 0
	call	_ExitProcess@4
_main ENDP

END