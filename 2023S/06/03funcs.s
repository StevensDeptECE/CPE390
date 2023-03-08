    .globl f1

f1:
    xor %rax, %rax
loop1:
    add  $1, %rax
    cmp  %rcx, %rax
    jl   loop1
    ret

    .globl f2
f2:
loop2:
    sub  $1, %rcx
    jnz  loop2
    ret

# read in from a single location many times
    .globl f3
f3:
loop3:
    mov  (%rcx), %rax  # read in memory 
    sub  $1, %rdx
    jnz  loop3
    ret

# read in from memory out of order
#  rcx = pointing to array
#  rdx = number of elemetns in the array
#  r8  = number of times to do this
    .globl f4
f4:
    push %r10
    mov  %rcx, %r10   # r10 remembers where the array starts
loop4:
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    mov  (%rcx), %rax  # read in memory 
    add  $256, %rcx
    sub  $32, %rdx
    jnz  loop4
    mov  %r10, %rcx   # back to the beginning!
    sub  $1, %r8
    jnz  loop4
    
    ret


#    .globl main
#main:
#    leaq x, %rcx
#    mov $1000000000, %rdx
#    mov  %rsp, %rdx    #copy rsp so we can look at it
#    call f3
#    ret

#    .data
#    .align 8   # align to 8-byte boundary
#   .ascii "yo ho ho"
#    .align 8   # align to 8-byte boundary
#x:
#    .word 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
#y:
    #.double 1.0, 2.0, 3.0, 0.5, 0.25

#    .bss               # the segment of unintialized data
#z:
    #.skip 1000000      # reserve 1 million bytes of uninitialized space
