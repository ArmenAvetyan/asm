extern _printf
extern _scanf

section .data
	inp db "Enter a string:",0
	len db "%s",0
	output db "Length %d",10,0

section .bss
	buffer resb 256

section .text
	global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov rdi, inp
	xor rax, rax
	call _printf

	mov rdi, len
	lea rsi, [rel buffer]
	xor rax, rax
	call _scanf

	lea rsi, [rel buffer]
	mov rcx, 0

.count:
	mov r8, [rsi]
	cmp r8, 0
	je .done
	inc rcx
	inc rsi
	jmp .count

.done:
	mov rdi, output 
	mov rsi, rcx
	mov rax, 0
	call _printf

	leave
	ret
