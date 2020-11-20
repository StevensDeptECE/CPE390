	.global main
	@ r0 = int array
	@ r1 = int array
	@ r2 = length (both arrays the same)
	@ add every element of r0 into r1

	@ {2, 3, 4, 5} ,   {5, 6, 1, 2}
	@ {2, 3, 4, 5},    {7, 9, 5, 7}
	@ assume length is at least 1 (no need to check for empty lists)
main:
	push    {r4}
1:
        ldr	r3, [r0]
	add	r0, #4
	ldr	r4, [r1]
        add	r3, r4	@compute the sum into r3
        str	r3, [r1]
	add	r1, #4

	sub	r2, #1   @count down
	cmp	r2, #0   @compare to zero
	bne	1b       @keep going until we are zero

	@ or do this (shorter)
@	subs	r2, #1   @count down and compare against zero
@	bne	1b       @keep going until we are zero

	
	pop	{r4}
	
	bx	lr




	@ r0 = char array x[]
	@ r1 = char array y[]
	@ r2 = length (both arrays the same)
	@ sum x[i] XOR y[i]
sumthexor:
	push 	{r4, r5}
	mov	r5, #0
1:	
	ldrb	r3, [r0], #1   @ loads 1 byte into r3 = 0x000000xx
	ldrb	r4, [r1], #1   
        eor	r3, r4	@r3 = xor of 2 bytes
	add	r5, r3

	subs	r2, #1
	bne	1b

	@don't forget the return value!
	mov	r0, r5   @copy answer to r0 because -- that's the convention
	pop 	{r4, r5}
	bx	lr
	
	@ ldr loads 4 bytes
	@ ldrb loads 1 byte

	@ for tomorrow...
	@ vldr.f64 d0, [r0] loads 8 bytes  (double)
	@ vldr.f32 s0, [r0] loads 4 bytes  (float)
