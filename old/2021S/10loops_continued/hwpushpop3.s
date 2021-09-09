	.global main
main:
        @given: r4 = 0x00000000
	@given: r5 = 0xA5A5A5A5
	@given: r6 = 0x1C21C200
	@sp = 0x07bfffe08
	push	{r4}
	@ r4=0000000_______
	@sp =07bfffe04
	
	mov	r4, #12
	push	{r4}
	@sp =07bfffe00
	@ r4=12_____
	mov	r4, #87
	pop	{r4}
	@ r4=12_____
	@sp=07bfffe04
	pop	{r4}
	@ r4=000000000______
	@sp=07bfffe08______
	bx	lr


	
