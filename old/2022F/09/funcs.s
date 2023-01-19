            # xmm0     xmm1
# double f(double a, double b);

    .globl  _Z1fdd  #(a+b)*(a-b)
_Z1fdd:
    movsd  %xmm1, %xmm2  # temp = b
    addsd  %xmm0, %xmm2  # temp = a + b
    subsd  %xmm1, %xmm0  # a = (a-b)  xmm0 = xmm0 - xmm1
    mulsd  %xmm2, %xmm0  # xmm0 = (a+b)(a-b)
    ret

#                   rcx        rdx    
# double sum(double arr[], int len);

    .globl  _Z3sumPdi
_Z3sumPdi:
    pxor     %xmm0, %xmm0   # sum = 0
    cmpq     $0, %rdx
    je       out
LOOP:
   #      a[i]
    movsd  (%rcx), %xmm1    # temp=load each element of array
    addsd  %xmm1, %xmm0     # sum = sum + temp
    addq   $8, %rcx         # advance to next element
    sub    $1, %rdx         # count down 
    jne   LOOP
out:
    ret


    .globl  _Z4sum2Pdi
_Z4sum2Pdi:
    pxor     %xmm0, %xmm0   # sum = 0
    cmpq     $0, %rdx
    je       out2
    xorq    %rsi, %rsi      # i = 0
LOOP3:
   #      a[i]
    movsd  (%rcx, %rsi, 8), %xmm1    # temp=load each element of array
    addsd  %xmm1, %xmm0     # sum = sum + temp
    addq   $1, %rcx         # advance to next element
    sub    $1, %rdx         # count down 
    jne   LOOP
out2:
    ret

#               %rcx,   %rdx,       %xmm0
#void sub(double arr[], int len, double v);
    .globl _Z3subPdid
    leaq (%rcx, %rdx, 8), %rdi   # rdi = 1st addr past end
_Z3subPdid:
LOOP2:
    movsd   (%rcx), %xmm1    # load each element
    subsd   %xmm0, %xmm1     # xmm2 = x[i]- v
    movsd   %xmm1, (%rcx)    # store back into memory
    addq    $8,  %rcx
    cmpq    %rcx, %rdi
    jne     LOOP2
    ret

