	.global _Z4prodPii
	.global _Z3sumPii

	@ r0 = address of a,
	@ r1 = length of array
	@ 
_Z4prodPii:
	cmp	r1, #0
	movle	r0, #0
	bxle	lr

.L1:	
	mov	r2, #1 @ p= 1
	ldr	r3, [r0]
	mul	r2, r3 @ r2 *= r3
	add	r0, #4
	subs	r1, #1
	bne	L1
	bx	lr

_Z3sumPii:
	cmp	r1, #0
	blt	out

.L1:	
	mov	r2, #0 @ s=0
	ldr	r3, [r0]
	add	r2, r3 @ r2 += r3
	add	r0, #4
	subs	r1, #1
	bne	L1
out:
	mov	r0, r2
	bx	lr
