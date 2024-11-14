assume cs:code,ds:data

data segment
arr db 08h,10h,14h,22h,02h,05h,032h
data ends

code segment

start:
mov ax,data
mov ds,ax
mov cl,06h

loopi:
lea si,arr
mov ch,06h

loopj:
mov al,[si]
mov ah,[si+1]
cmp al,ah
jc continue
mov [si],ah
mov [si+1],al

continue:
inc si
dec ch
jnz loopj
dec cl
jnz loopi

stop:
int 3
mov ah,4ch
int 21h

code ends
end start