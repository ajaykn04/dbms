assume cs:code
code segment
start:
mov ax,000Ah
mov bl,02h
div bl
mov ah,4ch
int 21h
code ends
end start