
	@sum the elements of the array
	@r0 = pointer to array
	@r1 = length
	.global _Z6array1Pii
_Z6array1Pii:
	____	r2, #0		@initialize the sum to 0
1:
	____	r3, [r0], ___	@load r3, then advance to next element
	add	r2, ____	@add each element
	____	r1, #1		@count down
	____	1b
	____	r0, _____
	bx	lr


	.global _Z5maxmePiS_S_S_i
_Z5maxmePiS_S_S_i
	push	_______		@ save registers
1:
	___	r4, [r1]	@load r4 from the first array
	ldr	r5, ____	@load r5 from the second array
	___	r4,r5		@whichever is bigger...
	____	r4, [r0], #4	@write into the destination array
	____	r5, [r0], #4	@write into the destination array
	____	r3, ____	@count down
	____	1b		@repeat until the array is done
	pop	_______		@ restore registers
	bx	lr

