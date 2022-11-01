    .globl main
main:
    mov  $3,   %rdi    # rdi=3
    mov  $5,   %rsi    # rsi=5
    mov  %rdi, %r9
    andq %rsi, %r9     # r9 = rdi AND rsi
    mov  %rdi, %r10
    orq  %rsi, %r10    # r10 = rdi OR rsi
    mov  %rdi, %r11
    xorq %rsi, %r11    # r11 = rdi XOR rsi
    xorq %rax, %rax    # rax=?
    lsl  $2, %rsi      # rsi = rsi << 2
    lsr  $31, %rsi     # rsi = rsi >> 31
    lsr  %rax, %rsi    #
    movb  $4, %ax
    rolb  $2, %ax      # ax = 00010000
    ret                # return to the caller, end the program
