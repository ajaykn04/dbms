assume cs:code,ds:data

data segment
msg1 db "good morning$"
msg2 db "sweetie$"
data ends

code segment
start:
mov ax,data
mov ds,ax
lea dx,msg1
mov ah,09h
int 21h
lea dx,msg2
mov ah,09h
int 21h
mov ah,4ch
int 21h
code ends
end start