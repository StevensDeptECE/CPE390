	@ r0 --> 12345678 ff21c035
	@ r1 --> 91AB1c22 55161898
	@ r2 --> blank place to hold the answer
	
	@r0 = pointer to 64 bit number  r1 = pointer to second number
	@ r2 = pointer to the answer

add:
	push	{r4}
	ldr	r3, [r0, #4]
	ldr	r4, [r1, #4]
	adds	r4, r3, r4
	str	r4, [r2, #4]

	ldr	r3, [r0]
	ldr	r4, [r1]
	adc	r4, r3, r4
	str	r4, [r2]
	pop	{r4}
	bx	lr
