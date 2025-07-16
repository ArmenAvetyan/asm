extern _scanf
extern _printf

section .data
	ent db "Enter a number:",0
        input  db "%lld",0
        output db "You enterd: %lld",10,0
        number dq 0

section .text
global _main

_main:
        push rbp
        mov rbp, rsp

	lea rdi, [rel ent]
	xor rax, rax
	call _printf

        mov rdi, input
        lea rsi, [rel input]
        lea rsi, [rel number]
	xor rax, rax
        call _scanf

        mov rdi, output
        mov rsi, [rel output]
	mov rsi, [rel number]
        xor rax, rax
        call _printf

        mov rsp, rbp
        pop rbp
        ret
