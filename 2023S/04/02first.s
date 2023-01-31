    .globl main

main:
    mov $3, %rax
    mov $4, %rbx
    leaq (%rax, %rbx), %rcx  # rcx = rax + rbx
    #  leaq 14(%rax, %rbx, 8), %rcx  rcx = 14+rax + rbx*8

# 2-operand architecture
    mov  %rax, %rdx
    sub  %rbx, %rdx # rdx = %rax-%rbx

# if you are willing to wipe out rax
    sub  %rbx, %rax  # rax = rax - rbx

    # mov  $0, %rax   slow way
    xor  %rax, %rax # rax = 0 (faster)
    ret
