
.section .data
buffer : .space 100
msg : .asciz "Inputed : "

.global _start
.section .text

_start:

    @System call for user input
    mov r7,#3
    mov r0,#0
    ldr r1,=buffer
    mov r2,#100
    svc #0

    @System call to print user input 
