assume cs:code
code segment
start:
mov ax,1111h
mov bx,1111h
mul bx
mov ah,4ch
int 21h
code ends
end start