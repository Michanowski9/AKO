# AKO

How to create new project
32-bit only asm

- Build Dependencies -> Build Customizations -> masm

- Add -> NewItem -> \<filename\>.asm

- Set Debug & x86

- Properties -> Linker -> Command Line -> "libcmt.lib"

- Add code:

		.686
		.model flat

		extern _ExitProcess@4	: PROC
		public _main

		.data

		.code
		_main PROC

			push dword PTR 0
			call _ExitProcess@4
		_main ENDP
		END