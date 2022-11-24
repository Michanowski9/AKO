.686
.model flat

extern _ExitProcess@4	: PROC
public _main

.data

.code
_main PROC

	mov		eax, 5	
	
; 3 options: bt, test, cmp
		; using bt					
	bt		eax, 31			; counting from 0
	jnc		positive

		; using test
	test	eax, 80000000h
	je		positive

		; using cmp
	cmp		eax, 80000000h
	jb		positive



negative:
	neg		eax
	or		eax, 80000000h

positive:
	

	push	dword PTR 0
	call	_ExitProcess@4
_main ENDP

END