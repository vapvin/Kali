section .data
	msg db "IT IS ASSEMBLY PRINT PROGRAM"

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12

	syscall

	mov rax, 60

	syscall


