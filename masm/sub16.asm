assume cs:code
code segment
start:
mov ax,000Ah
mov bx,0005h
sub ax,bx
mov ah,4ch
int 21h
code ends
end start
