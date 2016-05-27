org 7c00h

mov ax, cs
mov es, ax
mov ax, label
mov bp, ax
mov cx, labelLen
mov ax, 1301h
mov bx, 000fh
mov dl, 0
int 10h

label: db "Happy Birthday!"
labelLen: equ $ - label
times 510 - ($ - $$) db 0
dw 0aa55h
