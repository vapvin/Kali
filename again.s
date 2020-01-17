section .data
	TEST db " Hello World "

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, TEST
	mov rdx, 15
	
	syscall

	mov rax, 60
	
	syscall

