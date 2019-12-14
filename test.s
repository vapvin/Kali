section .data
	na db "넷와이드 만새!~"
section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, na
	mov rdx, 12
	syscall
	mov rax, 60
	mov rdi, 0
	syscall

