    .globl main
main:
    mov $9, %rcx
    mov $11, %rdx

    movq %rcx, %r8
    andq %rdx,  %r8      # r8 = rcx AND rdx

    movq %rcx, %r9
    orq  %rdx, %r9

    movq %rcx, %r10
    xorq %rdx, %r10

    leaq (%rcx, %rdx), %r11

    #or, slower...
    movq  %rcx, %r11
    addq  %rdx, %r11

    negq  %r11

    shlq  $2, %r11      # logical shift left
    shrq  $1, %r11      # logical shift right

    ret
    