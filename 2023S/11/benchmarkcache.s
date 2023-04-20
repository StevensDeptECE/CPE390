    #rcx = location of the array,   rdx=len
    .globl _Z14testSequentialPKyy

_Z14testSequentialPKyy:
.loop1:
    mov   (%rcx), %r8   # load memory into register r8
    add   $8, %rcx
    sub   $1, %rdx
    jnz   .loop1
    ret
 
.globl _Z10testCache1PKyy
_Z10testCache1PKyy:
.loop2:
    mov   (%rcx), %r8   # load memory into register r8
    add   $0, %rcx
    sub   $1, %rdx
    jnz   .loop2
    ret


.globl _Z10testCache2PKyy
_Z10testCache2PKyy:
     push   %r13   # save the contents of r13
     mov    %rcx, %r13
.loop4:
     mov    %r13, %rcx     
.loop3:
    mov   $100000, %r9  # try to read 100k items from cache?
    mov   (%rcx), %r8   # load memory into register r8
    add   $8, %rcx
    sub   $1, %r9
    jnz   .loop3
    mov   %r13, %rcx
    sub   $100000, %rdx
    jg    .loop4
    pop   %r13
    ret

