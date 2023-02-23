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

Write a function that takes a 64-bit integer parameter and counts from 1 to that parameter. (Write a loop in assembler)

