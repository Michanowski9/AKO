.686
.model flat

extern _ExitProcess@4	: PROC
public _main

.data

.code
_main PROC
	; exercise:
	call	prepare
	xor		esi, edi
	
	; answer:
	call	prepare
	push	eax
	mov		eax, esi

	and		eax, edi	; eax := esi and edi
	or		esi, edi	; esi := esi or edi 
	sub		esi, eax	; esi := (esi or edi) - (esi and edi)

	pop		eax

	; xor:
	;	0101
	;	0011
	;  ------
	;	0110

	; or:		and:
	;	0101		0101
	;||	0011	&&	0011
	;  ------	   ------
	;	0111		0001
	;
	;	0111
	; -	0001
	;  ------
	;	0110
	
	push	dword PTR 0
	call	_ExitProcess@4
_main ENDP

prepare PROC
	mov		esi, 5
	mov		edi, 3
	ret
prepare ENDP

END