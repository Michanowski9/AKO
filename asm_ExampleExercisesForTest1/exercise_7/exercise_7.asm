.686
.model flat

extern _ExitProcess@4	: PROC
public _main

.data
			db 0F0h, 0Fh		; to find start

	obroty	LABEL	dword
			ORG		$ + 28
		
			db 0F0h, 0Fh		; to find stop & start
	
	; answer:
	obroty2	dd	7 dup (?)
		
			db 0F0h, 0Fh		; to find stop


.code
_main PROC

	push	dword PTR 0
	call	_ExitProcess@4
_main ENDP

END