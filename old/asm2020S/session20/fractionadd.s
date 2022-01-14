	.global _Z3add8FractionS_
_Z3add8FractionS_:
	@r0 = points at a, r1 points at b
	push	{r4, r5}
	mov	r2, [r0]     @a.num
	mov	r3, [r0, #4] @a.den
	mov	r4, [r1]     @b.num
	mov	r5, [r1, #4] @b.den

	@ answer = ???
	@ 
	mul     r2,r5
	mul     r4,r3
	add     r2, r4  @r2 = cross prod

	mul     r3, r5

	pop	{r4, r5}	
