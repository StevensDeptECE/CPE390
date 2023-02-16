.globl main

#   %rcx is the location of an array
#   %rdx is the number of elements in the array
writemem:
    xor   %r8, %r8   # r8 = 0
writememloop:       
    movq  %r8, (%rcx)
    add   $8, %rcx    
    sub   $1, %rdx
    jne   writememloop
    ret



main:

