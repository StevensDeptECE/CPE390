	.global main
main:
	push	{lr}
	mov	r0, #10
	bl	countdown

	mov	r0, #5
	bl	countup

	mov	r0, #3
	mov	r1, #6
	bl	sumCubeMinusSquare
	pop	{lr}
	bx	lr
	











	@ count down from r0 to 0
	countdown:
	@....
	1:	
	sub	r0, #1 @ r0=r0-1
	cmp	r0, #0 @ immediate mode
	bne	1b
	bx	lr	@pc=lr (jump back to where you came from)

	@ count down from r0 to 0
countdown2:
	@....
1:	
	subs	r0, #1 @ r0=r0-1
	bne	1b
	bx	lr

	@r0 = the number we want to stop on
countup:
	mov 	r1, #1
1:	
	add	r1, #1
	cmp	r1, r0  @ compute r1-r0 and set flags    N, Z, V, C
	bne	1b
	bx	lr

	@r0 = start number
	@r1 = stop number
	@compute sum of i*i*i - i*i 	for all i from a, to b
sumCubeMinusSquare:
	push	{r4}  @save r4 out (notice does not change r4, but DOES CHANGE sp)
	mov	r4, #0
1:	
	@ do something with r0

	@can you compute r0*r0*r0
	mul	r2, r0,r0 @r2 = r0 squared
	mul	r3, r2,r0 @r3 = r0 cubed
	sub	r3, r3, r2   @ the difference!
	add	r4, r3	  @compute the sum
		
	add	r0, #1
	cmp	r0, r1
	ble	1b
	
	mov	r0, r4
	pop	{r4}
	bx	lr
