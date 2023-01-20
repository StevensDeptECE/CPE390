sub %rcx, %rdx     # rdx-rcx

cmp  %rcx, %rdx    # compute rdx-rcx\
# if the result is zero, set z flag
# if the result < 0 , set N flag


        mov  $10, %rcx
LOOP:
        subq $1,  %rcx

        cmp  $0,  %rcx
        jne  LOOP


        mov  $10, %rcx
LOOP:
        ______  %xmm1,  %xmm0  # sum += x[i]

        cmp  $0,  %rcx
        _____  LOOP


movb   (%rcx), %rsi   

cmp  %rcx, %rdx         Z=   N=    C =   V=
jne  THERE
JB
JGT

             
tst  $1,    %rdx    # AND $1 with rdx
jne  ODD
//even here


    
    xxxxxxxxxxxxxxxxxxxxxxxy0y0y
tst $21, %rdx
jne   ANYBITSET

    xxxxxxxxxxxxxxxxxxxxxxxy0y0y
    0000000000000000101010111001
    0000000000000000000000010101
    =======================10001
mov  $21, %rsi
andq %rdx, %rsi
cmp  $21,  rsi  # are all bits marked y set?