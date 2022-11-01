    .globl main
main:
    mov  $5,   %eax    # immediate mode eax=5
    addl $6,   %eax    # immediate mode, eax = eax + 5
    mov  $7,   %rdi    # rdi=7
    movq %rax, %r9     # r9 = rax
    addq %rdi, %r9     # r9 = rax + rdi
    ret                # return to the caller, end the program
