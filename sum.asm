extern _printf
extern _scanf

section .data
	msg db "Enter two number:",0
	input db "%lld",0
	input1 db "%lld",0
	output db "Sum = %lld",10,0
	
section .bss
	num resq 1
	num1 resq 1

section .text
	global _main

_main:

	push rbp
	mov rbp, rsp

	mov rdi, msg
	xor rax, rax
	call _printf

	mov rdi, input
	lea rsi, [rel num]
	xor rax, rax
	call _scanf

	mov rdi, input1
	lea rsi, [rel num1]
	xor rax, rax
	call _scanf
	
	mov rax, [rel num]
	add rax, [rel num1]

	mov rdi, output
	mov rsi, rax
	xor rax, rax
	call _printf

	mov rsp, rbp
	pop rbp
	ret
