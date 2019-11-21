/*
Author: Peter Ho

    This demo demonstrates ARM calling conventions.

    The following demo must be compiled with call5.cc

    g++ call5.s call5.cc -o call5

    int f(a, b, c, d, e):
        @R0   = a
        @R1   = b
        @R2   = c
        @R3   = d
        @[sp] = e
*/
.text
.balign 4

.global _Z4add5iiiii
_Z4add5iiiii:
    add     r0, r1
    add     r0, r2
    add     r0, r3
    ldr     r1, [sp]
    add     r0, r1
    bx      lr
