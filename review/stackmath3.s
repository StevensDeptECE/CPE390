    .globl main
main:
    mov $3, %rcx
    mov $9, %rdx
    call  f
    ret

f:
    sub  $64,  %rsp
    push %rcx
    mov  %rcx, 16(%rsp)
    add  $6, %rcx
    mov  %rcx, 32(%rsp)
    add  %rcx, 40(%rsp)
    mov  $14,  %rcx
    pop  %rcx
    add  $64,  %rsp
    ret
