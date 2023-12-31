# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

.global _start

# Windows system symbols
.extern ExitProcess

.section .text

_start:
	call _main
	ret

_main:
	call _exit
	ret

_exit:
	movq $0, %rcx
	call ExitProcess
	ret

