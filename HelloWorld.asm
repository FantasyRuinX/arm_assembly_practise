
.global _start

.section .data
message : .asciz "Hello World\n"

.section .text

 _start :
    mov r0, #1
    ldr r1, =message
    mov r2, #14
    mov r7, #4
    svc #0

    mov r0, #0
    mov r7, #1
    svc #0