
.section .data
buffer : .space 100
userPrompt : .asciz "Please enter a message to echo : "
msg : .asciz "Inputed : "

.global _start
.section .text

_start:

    @Prompt user for input
    mov r7,#4
    mov r0,#1
    ldr r1, =userPrompt
    mov r2,#33
    svc #0

    @System call for user input
    mov r7,#3
    mov r0,#0
    ldr r1,=buffer
    mov r2,#100
    svc #0

    @System call to print user input 
    mov r7,#4
    mov r0,#1
    ldr r1, =msg
    mov r2,#10
    svc #0

    @System call to print user input 
    mov r7,#4
    mov r0,#1
    ldr r1, =buffer
    mov r2,#100
    svc #0

    @Exit program
    mov r7,#1
    mov r0,#0
    svc #0
