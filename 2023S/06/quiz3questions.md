# CPE 390 Quiz3 Questions

This quiz is not being given in class. You can take it home and study.

After each of the following instructions, state what is in the register
```asm
main:
    mov  $3, %rcx
    mov  $5, %rdx
    call f
    mov  %rcx, %rax
    and  %rdx, %rax  # ________________________

f:
    leaq  (%rcx, %rdx), %rax
    ret
```

1. Write a function that takes a 64-bit integer parameter and counts from 1 to that parameter. (Write a loop in assembler)

1. Write a function that takes a pointer to an array of 64-bit numbers and 64-bit number with the length of the array
Write zero to every element of the array.

1. Write a function that takes a pointer to an array of 64-bit numbers and 64-bit number with the length of the array
Double every element of the array.


New material (from today)
1. Given the following registers, state which memory locations are written to, and what values are written:

rsp = 0x7ff810080B0
rax = 3
rbx = 4
rcx = 5

```asm
     push   %rbx   what changes?___________________________
     mov    %rax, 8(%rsp)
     add    %rax, %rcx          _______________
     mov    %rcx, (%rsp)        _________________________
     pop    %rbx 
```
