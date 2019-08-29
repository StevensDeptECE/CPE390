	.global _Z3setPji
_Z3setPji:
	.fnstart
	@ R0 = address of the array
	@ R1 = position
	push	{r2, r3, r4}
	mov	r2, r1
	lsr	r2, #5	@ r2 is the position within the array
	lsl	r2, #2	@ r2 is the position within the array
	add	r0, r0, r2 @r0 is the location of the word we want
	ldr	r3, [r0]    @ read the word from the array
	and	r1, #31  @ 0x1f 000000000000011111   keep last 5 bits in R1
	mov	r4, #1
	lsl	r4, r4, r1  @ r4 has a 1 bit in the right place
	orr	r3, r3, r4
	str	r3, [r0]
	pop	{r2, r3, r4}
	bx 	lr
	@010101010110101001010101x1001001010
	@00000000000000000000000010000000000
	

	.global _Z5clearPji
_Z5clearPji:	
	@ R0 = address of the array
	@ R1 = position
	push	{r2, r3, r4}
	mov	r2, r1
	lsr	r2, #5	@ r2 is the position within the array
	lsl	r2, #2	@ r2 is the position within the array
	add	r0, r0, r2 @r0 is the location of the word we want
	ldr	r3, [r0]    @ read the word from the array
	and	r1, #31  @ 0x1f 000000000000011111   keep last 5 bits in R1
	mov	r4, #1
	lsl	r4, r4, r1  @ r4 has a 1 bit in the right place
	mvn	r4, r4   @ r4 = NOT r4
	and	r3, r3, r4
	str	r3, [r0]
	pop	{r2, r3, r4}
	bx 	lr
