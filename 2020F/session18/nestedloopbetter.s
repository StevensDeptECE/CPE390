	.global multtable
	@r0 = n
multtable:
	push	{r4-r7}
	mov	r4, r0 @r4 =n
	mov	r5, r1 @r5 = row
	mov	r6, r2 @r6 = col
	mov	r7, r3
	mov	r5, #1
1:	
	mov	r6, #1
2:	
	// this is our inner loop
	mov	r0, .cout
	mul	r1, r5, r6
	bl	_ZNSolsEi

	add	r5, #1
	cmp	r5, r4
	bne	2b
	
	
	add	r1, #1
	cmp	r1, r0
	bne	1b
	bx	lr
