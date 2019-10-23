/*
   A short demo on recursion using ARM assembly

   The following is implemented below:

   int fib(n) {
     if (n < 2)
       return 1;
     return fib(n - 1) + fib(n - 2);
   }

   int main() {
     int i = 39;
     while (i >= 0) {
       printf("fib(%d) = %d\n", i, fib(i));
       --i;
     }
   }
*/

.data
.balign 4
msg: .asciz "fib(%d) = %d\n"

.text
.balign 4
fib:
    cmp     r0, #0      @ if n == 0:
    bxeq    lr          @   return 0

    cmp     r0, #2      @ if n <= 1:
    movle   r0, #1      @   r0 = 1
    bxle    lr          @   return r0

    push    {r1, r2, r4, lr}

    sub     r0, #1      @ r0 = n - 1
    sub     r2, r0, #1  @ r2 = n - 2
    bl      fib         @ r0 = fib(n - 1)
    mov     r1, r0      @ r1 = fib(n - 1)
    mov     r0, r2      @ r0 = n - 2
    bl      fib         @ r0 = fib(n - 2)
    add     r0, r1      @ r0 = fib(n - 1) + fib(n - 2)
    
    pop     {r1, r2, r4, lr}
    bx      lr          @ return r0
    
.global main
main:
    push    {r4, lr}
    mov     r4, #39
.L1:
    mov     r0, r4
    bl      fib
    mov     r1, r4
    mov     r2, r0
    ldr     r0, =msg
    bl      printf
    subs    r4, #1
    bpl     .L1
    eor     r0, r0
    pop     {r4, lr}
    bx      lr
