	@r0 = array
	@r1 = number of elements
	.global largest
largest:
	ldr	r2, [r0]	@ the maximum is the first element for now
1:
	add	r0, #4
	ldr	r3, [r0]
	cmp	r3,r2
	movgt	r3,r2
	subs	r1, #1
	bne	1b
	mov	r2,r0
	bx	lr


	.global smallest
smallest:


1:





1:	
	
