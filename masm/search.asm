assume cs:code,ds:data

data segment
num dw 0001h,0010h,0100h,1000h
count dw 0004h
key dw 0001h
msg1 db "found$"
msg2 db "not found$"
data ends

code segment

start:
mov ax,data
mov ds,ax
mov cx,count
mov ax,key
lea si,num

next:
cmp ax,[si]
jz found
add si,2
loop next
lea dx,msg2
mov ah,09h
int 21h
jmp stop

found:
lea dx,msg1
mov ah,09h
int 21h

stop:
mov ah,4ch
int 21h

code ends
end start