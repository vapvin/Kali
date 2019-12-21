section .data
	msg db "Hello World"

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsp, msg
	mov rdx, 12

	syscall

	mov rax, 60

	syscall
