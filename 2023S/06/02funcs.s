//  uint64_t s = sum(a, 10);
//    zero(b, 100);

.globl _Z3sumPyy

    #  rcx = the location of the array in memory
    #  rdx = the length
_Z3sumPyy:
   xor  %rax, %rax   # sum = 0
   cmp  $0, %rdx
   jz   sumout
sumloop:
    add   (%rcx), %rax
    add   $8, %rcx
    # do the array stuff
    sub  $1, %rdx
    jnz  sumloop
sumout:
    ret

    #  rcx = the location of the array in memory
    #  rdx = the length
_Z4sum2Pyy:
   xor  %rax, %rax   # sum = 0
   xor  %r8, %r8     # i = 0
   cmp  $0, %rdx
   je  sum2out
sum2loop:
    add   (%rcx, %r8), %rax
    add   $1, %r8
    # do the array stuff
    sub  $1, %rdx
    jnz  sum2loop
sum2out:
    ret

    #  rcx = the location of the array in memory
    #  rdx = the length
_Z4sum3Pyy:
   xor  %rax, %rax   # sum = 0
   xor  %r8, %r8     # i = 0
   cmp  $0, %rdx
   je  sum3out
sum3loop:
    add   (%rcx, %r8, 8), %rax
    add   $1, %r8
    # do the array stuff
    sub  $1, %rdx
    jnz  sum3loop
sum3out:
    ret

    .globl _Z4zeroPyy
_Z4zeroPyy:
    ret
