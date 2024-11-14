assume cs:code
code segment
start:
mov al,03h
mov bl,03h
mul bl
mov ah,4ch
int 21h
code ends
end start