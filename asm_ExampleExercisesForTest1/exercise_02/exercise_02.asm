.686
.model flat

extern _ExitProcess@4	: PROC
public _main

.data

.code
_main PROC
	call	prepare

	mov		bh, 11
	xor		bh, 15
	; ebx = 0000 0400
	; bh = 04
	; answer = 4

	push	dword PTR 0
	call	_ExitProcess@4
_main ENDP

prepare PROC
	xor		ebx, ebx
	ret
prepare ENDP

END