segment stack stack
        resb 100 
stacktop:

        segment data

        dex dw 0
        dy dw 0
        x_add dw 0
        y_add dw 0
        maxd dw 0
        act_dx dw 0
        act_dy dw 0
        c dw 0
        x1 dw 0
        y1 dw 0
        x2 dw 0
        y2 dw 0

        segment code
start:
        mov rax,data
        mov ds,rax
        mov rax,stack
        mov ss,rax
        mov rsp,stacktop
        mov rbp,stacktop

        
        mov ah,0h
        mov al,13h
        int 10h

       
        mov rax,word 200
        push rax        
        mov rax,word 50
        push rax          
        mov rax,word 20
        push rax          
        mov rax,word 65
        push rax          
        call line

        

        xor rax,rax
        int 16h

        

        mov ah,0
        mov al,3
        int 10h

        

        mov ah,4ch
        int 21h

         

line:
        push bp
        mov bp,sp
        mov rax,[bp+4] 
        mov [y2],rax
        mov rax,[bp+6]
        mov [x2],rax
        mov rax,[bp+8]
        mov [y1],rax
        mov rax,[bp+10]
        mov [x1],rax

        

        mov rax,[x2]
        sub rax,[x1]
        cmp rax,0
        jnl abs1
        neg rax
abs1:   mov [dex],rax

        

        mov rax,[y2]
        sub rax,[y1]
        cmp rax,0
        jnl abs2
        neg rax
abs2:   mov [dy],rax

        

        mov rax,[x1]
        cmp rax,[x2]
        jl min
        mov [x_add],word -1
        jmp end
min:    mov [x_add],word 1
end:
        

        mov rax,[y1]
        cmp rax,[y2]
        jl min2
        mov [y_add],word -1
        jmp end2
min2:   mov [y_add],word 1
end2:
        

        mov rax,[dy]
        cmp rax,[dex]
        jl min3
        mov rax,[dy]
        mov [maxd],rax
        jmp end3
min3:   mov rax,[dex]
        mov [maxd],rax
end3:

        mov rcx,[maxd]
here:   mov rax,[dy]
        add [act_dy],rax
        mov rax,[act_dy]
        cmp rax,[maxd]
        jl next
        mov rax,[maxd]
        sub [act_dy],rax
        mov rax,[y_add]
        add [y1],rax
next:   mov rax,[dex]
        add [act_dx],rax
        mov rax,[act_dx]
        cmp rax,[maxd]
        jl next2
        mov rax,[maxd]
        sub [act_dx],rax
        mov rax,[x_add]
        add [x1],rax
next2:  call plot
        loop here
        mov rsp,rbp
        pop rbp
        ret 8

plot:
        push rax
        push rbx
        push rcx
        push rdx
        mov ah,0ch
        mov rdx,[y1]
        mov rcx,[x1]
        mov al,0d0h     
        mov bh,0h
        int 10h
        pop rdx
        pop rcx
        pop rbx
        pop rax
        ret 