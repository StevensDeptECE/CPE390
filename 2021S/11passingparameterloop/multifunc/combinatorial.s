	.global	_Z4facti
	.global	_Z6chooseii
	.global	_Z12sumBinomialsi
	
@r0 = n   r0 = answer
_Z4facti:

	mov	r1, #1
1:
	mul	r1, r0  @ multiply to compute the product
	sub	r0, #1
	cmp	r0, #0
	bne	1b
	mov	r0, r1  @return the answer
	bx	lr

	@ r0= n  r1 = r   choose(n,r) = n!/(r! (n-r)!)
_Z6chooseii:
	push	{r4,r5, r6,r7, r8,lr}
	mov	r4, r0  	@remember n in r4
	mov 	r5, r1		@remember r in r5
	bl	_Z4facti	@ calculate n!
	mov	r6, r0		@ r6	 = n!
	mov	r0, r5		@ calculate r!
	bl	_Z4facti	@ r0 = r!
	mov	r7, r0		@ r7 = r!
	sub	r0, r4, r5	@ r= n-r
	bl	_Z4facti	@ r0 = (n-r)!
	
	mul	r8, r0, r7	@ r8 = r!(n-r)!
	//	div 	r0, r6, r8	@ r0 = r6/r8 = n!/(r!(n-r)!)
	mov	r0, r6
	mov	r1, r8
	bl	__aeabi_idiv
	pop	{r4,r5, r6,r7, r8,pc}
	@ r0 = n
_Z12sumBinomialsi:
	push	{r4, r5, r6, lr}
	mov	r6, #0	@r6 = sum	
	mov	r5, r0   @ r5 is th e number of times to iterate (n)
	mov	r4, #0
1:		
	mov	r0,r5 	@n
	mov	r1,r4 	@r
	bl	_Z6chooseii
	add	r6, r0   @sum = sum + choose(n,r)
	
	add	r4, #1
	cmp	r4, r5
	ble	1b
	pop	{r4, r5, r6, lr}
