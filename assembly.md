## SysCall Table

[Assembly Playground](https://app.x64.halb.it/)

[Linux System Call Table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)



## Initialized and Uninitiazited Memory
### Initialized
.section .data <br>
label: <br>
    .asciz "text" 

### Uninitialized
.section .bss <br>
label: <br>
    .free 15 
