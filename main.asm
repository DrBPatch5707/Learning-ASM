section .data
hello: db "hello, world. This is my first official assembly program.", 10
helloLen: equ $-hello


section .text

    global _start

_start:

    mov rax,1
    mov rdi,1
    mov rsi,hello
    mov rdx,helloLen
    syscall

    mov rax,60
    mov rdi,0
    syscall

