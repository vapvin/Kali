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

    cmp r9, 0
    jp _done 

    mov cl, [r9]
    movzx r9, cl
    sub r9, 0x30

    mov r8, r9
    xor r9, r9
    call _syscall