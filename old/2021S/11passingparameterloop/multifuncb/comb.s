	.global _Z4facti
	.global _Z6chooseii
	.global _Z11sumBinomiali


	@r0 = n
_Z4facti:
	mov	r2, #1
	mov	r1, #1
1:	
	mul	r2, r1 @r2 = r2 * r1
	add	r1, #1
	cmp	r1,r0
	ble	1b	   @ <=
	mov	r0, r2
	bx	lr

	@r0 = n
	@r1 = r
_Z6chooseii:
	push	{r4,r5, r6,r7, r8,lr}
	mov	r4, r0	@r4 = n
	mov	r5, r1  @r5 = r
	
	bl	_Z4facti  @r0 = n!
	mov	r6, r0    @r6 = n!

	mov	r0, r5    @r0 = r
	bl	_Z4facti  @r0 = r!
	mov	r7, r0    @r7 = r!

	sub	r0, r4, r5 @r0=n-r
	bl	_Z4facti  @r0 = (n-r)!

	@r0=n!/(r!*(n-r)!)
	mul	r1, r0,r7
	mov	r0, r6
	@div	r0, r6, r0 @the answer!

	@r0=numerator = n!
	@r1=denominator = r!(n-r)!
	bl	__aeabi_idiv
	pop	{r4,r5, r6,r7,r8,pc}
	
	@r0 = n
_Z11sumBinomiali: 
	push	{r4, r5, r6, lr}
	mov	r4, r0 @r4 = n
	mov	r5, #0
	mov	r6, #0	@sum = r6
1:	
	mov	r0, r4
	mov	r1, r5
	bl	_Z6chooseii
	add	r6, r0
	
	add	r5, #1
	cmp	r5, r4
	ble	1b
	mov	r0, r6

	pop	{r4, r5, r6, pc}

	
