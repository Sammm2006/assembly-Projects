.global _start
.intel_syntax noprefix

_start:
       mov rax, 1
       mov rdi, 1
       lea rsi, [menu]
       mov rdx, 82
       syscall

       mov rax, 0
       mov rdi, 0
       lea rsi, [option]
       mov rdx, 5
       syscall

       mov al, [option]
       sub al, '0'
       mov bl, al

       mov rax, 1
       mov rdi, 1
       lea rsi, [firstO]
       mov rdx, 23
       syscall

       mov rax, 0
       mov rdi, 0
       lea rsi, [firstNum]
       mov rdx, 15
       syscall

       mov rax, 1
       mov rdi, 1
       lea rsi, [secondO]
       mov rdx, 24
       syscall

       mov rax, 0
       mov rdi, 0
       lea rsi, [secondNum]
       mov rdx, 15
       syscall

       cmp bl, 1
       je Addition

Addition: 
        movzx rbx, byte ptr [firstNum]
        sub rbx, '0'
        movzx rbp, byte ptr [secondNum]
        sub rbp, '0'
        add rbx, rbp
        cmp rbx, 10
        jl single_digit

        mov al, bl 
        mov ah, 0
        mov cl, 10
        div cl
        add al, '0'
        add ah, '0'
        mov [equal], al
        mov [equal+1], ah

        jmp print_equal

single_digit:
        add rbx, '0'
        mov [equal], rbx

        jmp print_equal

print_equal:
        mov rax, 1
        mov rdi, 1
        lea rsi, [equal]
        mov rdx, 2
        syscall

       mov rax, 60
       mov rdi, 69
       syscall

.section .data
menu:
    .asciz "Calculater!\n1.Addition\n2.Substraction\n3.Multiplication\n4.Division\n\nYour Choice : "

.section .data
firstO:
    .asciz "\nEnter First Number : "

.section .data
secondO:
    .asciz "\nEnter Second Number : "

.section .bss
option: 
    .skip 5

.section .bss
equal: 
    .skip 5

.section .bss
firstNum: 
    .skip 10

.section .bss
secondNum: 
    .skip 10

