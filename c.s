section .data
    msg db "Hello World"
    star db "*"

section .text
    global _start

_start:
    xor rax, rax
    mov rbx, rax
    mov rcx, rax
    mov rdx, rax

    mov rsp, 64
    mov rdi, 0
    mov rsi, rsp
    mov rdx, 63

    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, rsp
    mov rdx, 63

    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 63

    syscall

    mov rax, 60

    syscall
