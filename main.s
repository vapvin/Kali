section .data
<<<<<<< HEAD
	msg db "Hello World \n"
=======
	msg db "Hello World"
	msg db "What is Assembly?"
>>>>>>> refs/remotes/origin/master
section .text
	global_start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12
	syscall
	mov rax, 60
	mov rdi, 0
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
