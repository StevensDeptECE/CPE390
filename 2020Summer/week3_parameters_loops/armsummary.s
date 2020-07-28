	.global xxx
xxx:

1:
	mov	r0, #2 @ move immediate
	mov	r1, r2 @move register to register

	add	r0, r2, r1
	sub     r0, r1, r2
	subs	r0, #1	   @ subtract and compare against 0
	ldr	r0 [r1] @ load from location l1 into r0
	str	r0, [r1] @ write into memory from register

	bl	address @jump to function
	bx	lr	@return from function

	cmp
	bne
	beq...


	
	push {r0}
	pop  {r0}

	push {r0, r3}
	pop  {r0, r3}

	push {r0-r5}
	pop  {r0-r5}
	
