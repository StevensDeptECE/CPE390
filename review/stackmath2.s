    .globl main
main:
    mov $3, %rcx
    mov $9, %rdx
    call  f
    ret

f:
    sub  $32,  %rsp
#    leaq $0x10(%rsp), %r8
#    mov  %rcx, (%r8)
    mov  %rcx, 16(%rsp)
    leaq 8(%rsp), %r9
    mov  %rdx, (%r9)
    push %rax
    mov  $14,  %rax
    pop  %rax
    add  $32,  %rsp
    ret
