extern _printf

section .data
	hello db "Hello World!",10,0

section .text
	global _main:

_main:
	push rbp
	mov rbp, rsp
	
	xor rax, rax
	mov rdi, hello
	call _printf

	mov rsp, rbp
	pop rbp
	
	ret	
