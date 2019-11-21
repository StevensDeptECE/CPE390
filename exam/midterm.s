	.global _f
_f:
	mov	r0, #4
	mov	r1, #1
	mov	r2, #0
.L1:
	orr	r2,r2,r1
	lsl	r1,#2
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L1
	@ r0 =
	@ r1 =
	@ r2 =
