/*
Author: Peter Ho

   A short demo on recursion using ARM assembly

   The following is implemented below:

   int fact(n) {
     if (n < 2)
       return 1;
     return n * fact(n - 1);
   }

   int main() {
     int i = 12;
     while (i >= 0) {
       printf("%d! = %d\n", i, fact(i));
       --i;
     }
   }
*/

.data
.balign 4
msg: .asciz "%d! = %d\n"

.text
.balign 4
fact:
    cmp     r0, #1      @ if n <= 1:
    movle   r0, #1      @   r0 = 1
    bxle    lr          @   return r0

    push    {r1, lr}    @ preserve r1 and ret addr 

    mov     r1, r0      @ r1 = n
    sub     r0, #1      @ r0 = n - 1
    bl      fact        @ r0 = fact(n - 1)
    mul     r0, r1      @ r0 = n * fact(n - 1)
    
    pop     {r1, lr}    @ restore r1 and ret addr
    bx      lr          @ return r0
    
.global main
main:
    push    {r4, lr}
    mov     r4, #12
.L1:
    mov     r0, r4
    bl      fact
    mov     r1, r4
    mov     r2, r0
    ldr     r0, =msg
    bl      printf
    subs    r4, #1
    bpl     .L1
    eor     r0, r0
    pop     {r4, lr}
    bx      lr
