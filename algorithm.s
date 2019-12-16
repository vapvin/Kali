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
        mov ax,data
        mov ds,ax
        mov ax,stack
        mov ss,ax
        mov sp,stacktop
          mov bp,stacktop

        
        mov ah,0h
        mov al,13h
        int 10h

       
        mov ax,word 200
        push ax        
        mov ax,word 50
        push ax          
        mov ax,word 20
        push ax          
        mov ax,word 65
        push ax          
        call line

        

        xor ax,ax
        int 16h

        

        mov ah,0
        mov al,3
        int 10h

        

        mov ah,4ch
        int 21h

        

line:
        push bp
        mov bp,sp
        mov ax,[bp+4] 
        mov [y2],ax
        mov ax,[bp+6]
        mov [x2],ax
        mov ax,[bp+8]
        mov [y1],ax
        mov ax,[bp+10]
        mov [x1],ax

        

        mov ax,[x2]
        sub ax,[x1]
        cmp ax,0
        jnl abs1
        neg ax
abs1:   mov [dex],ax

        

        mov ax,[y2]
        sub ax,[y1]
        cmp ax,0
        jnl abs2
        neg ax
abs2:   mov [dy],ax

        

        mov ax,[x1]
        cmp ax,[x2]
        jl min
        mov [x_add],word -1
        jmp end
min:    mov [x_add],word 1
end:
        

        mov ax,[y1]
        cmp ax,[y2]
        jl min2
        mov [y_add],word -1
        jmp end2
min2:   mov [y_add],word 1
end2:
        

        mov ax,[dy]
        cmp ax,[dex]
        jl min3
        mov ax,[dy]
        mov [maxd],ax
        jmp end3
min3:   mov ax,[dex]
        mov [maxd],ax
end3:

        mov cx,[maxd]
here:   mov ax,[dy]
        add [act_dy],ax
        mov ax,[act_dy]
        cmp ax,[maxd]
        jl next
        mov ax,[maxd]
        sub [act_dy],ax
        mov ax,[y_add]
        add [y1],ax
next:   mov ax,[dex]
        add [act_dx],ax
        mov ax,[act_dx]
        cmp ax,[maxd]
        jl next2
        mov ax,[maxd]
        sub [act_dx],ax
        mov ax,[x_add]
        add [x1],ax
next2:  call plot
        loop here
        mov sp,bp
        pop bp
        ret 8

plot:
        push ax
        push bx
        push cx
        push dx
        mov ah,0ch
        mov dx,[y1]
        mov cx,[x1]
        mov al,0d0h     
        mov bh,0h
        int 10h
        pop dx
        pop cx
        pop bx
        pop ax
        ret 