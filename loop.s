section .data
	msg db "A"
section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 1
	mov r10, 1

again:
	cmp r10, 100
	je done
	syscall
	mov rax, 1
	inc r10
	jmp again

done:
	mov rax, 60
	mov rdi, 0
	syscall

section .data
	msg db "A"
section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 1
	mov r10, 1

again:
	cmp r10, 100
	je done
	syscall
	mov rax, 1
	inc r10
	jmp again

done:
	mov rax, 60
	mov rdi, 0
	syscall