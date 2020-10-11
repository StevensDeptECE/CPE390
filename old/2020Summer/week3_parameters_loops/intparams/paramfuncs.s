        .global _Z2f1i
_Z2f1i:
        bx      lr
        
        .global _Z2f2ii
_Z2f2ii:
        add     r0, r1
        bx      lr

        .global _Z2f3iii
_Z2f3iii:
        add     r0, r1
        add     r0, r2
        bx      lr

        .global _Z2f4iiii
_Z2f4iiii:
        add     r0, r1
        add     r2, r3
        add     r0, r2
        bx      lr
        
        .global _Z2f5iiiii
_Z2f5iiiii:
        add     r0, r1
        add     r2, r3
        add     r0, r2
        ldr     r2, [sp]
        add     r0, r2
        bx      lr

