; this a simple addition calculator in asm

section .data
    bInputValue db 20
    bPlusValue db 50
    bSumResult db 0

section .text 
     global main
   main:
    mov rbp, rsp; for correct debugging
    mov rax, 0
    mov al, byte [bInputValue]
    add al, byte [bPlusValue]
    mov byte [bSumResult], al
    mov al, 0
    ret