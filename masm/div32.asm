assume cs:code,ds:data,es:extra

data segment
op1 dd 00000045h
op2 dw 0022h
data ends

extra segment
divq dw ?
divr dw ?
extra ends

code segment
start:
mov ax,data
mov ds,ax
mov ax,extra
mov es,ax
mov si,offset op1
mov ax,[si]
mov dx,[si+2]
mov si,offset op2
mov bx,[si]
div bx
mov di,offset divq
mov [di],ax
mov di,offset divr
mov [di],dx
mov ah,4ch
int 21h
code ends
end start