assume ds:data,cs:code
data segment
f dw ?
data ends

code segment
start:
mov ax,0005h
mov cx,ax

l1:
dec cx
mul cx
cmp cx,01
jnz l1
mov f,ax
mov ah,4ch
int 21h

code ends
end start