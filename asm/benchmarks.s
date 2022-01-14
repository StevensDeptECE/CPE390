@ count down with sub and compare
	.global _Z3f01i
_Z3f01i:
.L1$:
	sub	r0, #1
	cmp	r0, #0
	bne	.L1$

@count down with subs
	.global _Z3f02i
_Z3f02i:
.L1$:
	subs	r0, #1
	bne	.L1$

@count up
	.global _Z3f03i
_Z3f03i:
	mov	r1, #0
.L1$:
	add	r1, #1
	cmp	r1, r0
	bne	.L1$

	@scan array using countdown
	.global _Z3f04Pkii
_Z3f04Pkii:	

.L1$:
	ldr	r2, [r0]
	add	r0, #4
	subs	r1, #1
	bne	.L1$

	@scan array using countdown and autoincrement
	.global _Z3f05Pkii
_Z3f05Pkii:	

.L1$:
	ldr	r2, [r0], #4	@ use autoincrement by 4
	subs	r1, #1
	bne	.L1$

	@scan array backwards using countdown
	.global _Z3f06Pkii
_Z3f06Pkii:
	add	r0, r0, r1, #2  @r0 = r0 + r1 * 4
.L1$:
	ldr	r2, [r0!]	@ use autopredecrement
	subs	r1, #1
	bne	.L1$

	@sum array. to do mean, learn to convert int to double.... mean array
	.global _Z3f07Pkii
_Z3f07Pkii:
	vmov.64	 d0, #0
.L1$:
	vldr.64	 d1, [r0], #8	@ use autoincrement
	vadd.f64 d0, d1
	subs	 r1, #1
	bne	 .L1$
@	vdiv.f64 d0, 
	bx	lr


	@sum not mean array
	.global _Z3f07Pkii
_Z3f07Pkii:
	vmov.64	 d0, .ZERO
.L1$:
	vldr.64	 d1, [r0]	@ load each number
	add	r0, #8		@ increment to next element
	vadd.f64 d0, d1
	subs	 r1, #1
	bne	 .L1$
	bx	lr

	@sum squares
	.global _Z3f08Pkii
_Z3f08Pkii:
	vmov.64	 d0, #0
.L1$:
	vldr.64	 d1, [r0], #8	@ use autoincrement
	vmla.f64 d0, d1, d1
	subs	 r1, #1
	bne	 .L1$
	bx	lr

	@sum cubes
	.global _Z3f09Pkii
_Z3f09Pkii:
	vmov.64	 d0, #0
.L1$:
	vldr.64	 d1, [r0], #8	@ use autoincrement
	vmul.f64 d2, d1, d1
	vmla.f64 d0, d1, d2
	subs	 r1, #1
	bne	 .L1$
	bx	 lr

	@sum square root of squares
	.global _Z3f10Pkii
_Z3f10Pkii:
	vmov.64	 d0, #0
.L1$:
	vldr.64	  d1, [r0], #8	@ use autoincrement
	vmla.f64  d0, d1, d1
	subs	  r1, #1
	bne	  .L1$
	vsqrt.f64 d0,d0
	bx	  lr	

	
.ZERO:
	.word	0
	.word	0
