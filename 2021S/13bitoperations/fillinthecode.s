countup:	
	____ r0, #0   @ initialize to zero
1:
	
	____	r0, #1   @count up
	cmp	___, #100
	bne	___
		___	lr

	@r0 = the number to count
countdown:	
1:
	
	____	r0, #1   @count down
	bne	___
	bx	lr

	@r0 = a
	@r1 = b
	@return the average of the two
avg:	
	___	r0, r1   @ r0 = r0 + r1
	___     r0, #1	 @ divide by 2
	bx	___

	@r0 = a
	@r1 = b
	@return the product of a * (a+1) * (a+2) * ... * b
	@example product(3,5) = 3*4*5
product:
	____    r2, #1   @ start with 1, the identity for multiplication
1:
	____    r2, r0   @r2=r2*r0
	____	r0, #1   @count up
	____    r0, r1   @are we there yet?
	____    1b
	mov	___, r2
	bx	lr

