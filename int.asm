extern _printf

section .data
	msg db "%d",10,0


section .text
global _main

_main:
	push rbp
	mov rbp, rsp

	mov rdi, msg
	mov rsi, 42
	xor rax, rax
	call _printf

	mov rsp, rbp
	pop rbp
	ret
