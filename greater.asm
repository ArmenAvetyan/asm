extern _printf
extern _scanf

section .data
	msg db "Enter first number:",0
	msg1 db "Enter second number:",0
	inp db "%lld",0
	inp1 db "%lld",0
	output db "Greater is %lld",10,0

section .bss
	num resq 1
	num1 resq 1

section .text
	global _main
_main:

	push rbp
	mov rbp, rsp
	;sub rbp, 32

	mov rdi, msg
	xor rax, rax
	call _printf

	mov rdi, inp
	lea rsi, [rel num]
	xor rax, rax
	call _scanf

	mov rdi, msg1
	xor rax, rax
	call _printf

	mov rdi, inp1
	lea rsi, [rel num1]
	xor rax, rax
	call _scanf

	mov rax, [rel num]
	mov rbx, [rel num1]
	cmp rax, rbx
	jge .greater
	mov rax, rbx

.greater:
	mov rdi, output
	mov rsi, rax
	xor rax, rax
	call _printf

	mov rsp, rbp
	pop rbp
	ret
