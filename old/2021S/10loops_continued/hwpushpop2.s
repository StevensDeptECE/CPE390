	.global main
main:
        @given: r4 = 0x00269128
	@given: r5 = 0xF9102851
	@given: r6 = 0xEDC2851A
	@sp = 0x07bffffC4
	push	{r4}   @ sp=sp-4 store r4 --> [sp] COPY TO MEMORY DOES NOT CHANGE!!!
	@ r4=_______
	@sp =
	
	mov	r4, #92
	push	{r4}
	@sp =
	mov	r4, #87
	@ r4=_____
	pop	{r4}
	@ r4=_____
	
	pop	{r4}
	@ r4=______

	push	{r6,r7}
	mov	r6, #45
	mov	r7,r6
	@sp=______
	pop	{r6,r7}
	@sp=______
	@r6=_____
	
	bx	lr


	
