org 100h

;set video mode to 80x25 text mode
mov ah, 0
mov al, 3

; initialize loop counter and start number 
mov cx, 10
mov bl, 1

print_loop:
    mov al, bl
    add al, '0'
    mov ah, 0Eh
    int 10h 
    
    mov al, 13
    mov ah, 0Eh
    int 10h
    mov al, 10
    mov ah, 0Eh
    int 10h
    
    inc bl
    
    loop print_loop
    
mov ah, 0
int 16h

mov ax, 4C00h
int 21h