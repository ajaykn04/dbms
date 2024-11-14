assume cs:code
code segment
start:
mov ax,0009h
mov bx,0001h
add ax,bx
mov ah,4ch
int 21h
code ends
end start