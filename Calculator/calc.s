.global _start
.intel_syntax noprefix

_start:
       //read input 
       mov rax, 0
       mov rdi, 0
       lea rsi, [buffer]
       mov rdx, 15
       syscall

       mov rax, 1
       mov rdi, 1
       lea rsi, [buffer]
       mov rdx, 15
       syscall

       mov rax, 60
       mov rdi, 69
       syscall

.section .bss
buffer:
    .skip 15

