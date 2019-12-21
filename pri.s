section .data
    STAR db "*"
    EMPTY db 0x0a

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rdx, 1
    mov r10, 0
    mov r9, [rsp + 16]