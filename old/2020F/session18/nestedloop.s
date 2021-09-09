	.global multtable
	@r0 = n
multtable:
	push	{r4-r7}
	mov	r1, #1
1:	
	mov	r2, #1
2:	
	// this is our inner loop
	mul	r3, r1, r2
	push	{r0-r3}
	bl	_ZNSolsEi
 	pop	{r0-r3}

	add	r2, #1
	cmp	r2, r0
	bne	2b
	
	
	add	r1, #1
	cmp	r1, r0
	bne	1b
	bx	lr
