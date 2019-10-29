	// f(int x[], int n)
	.global	_Z1fpii
_Z1fpii:
	@ r0 = pointing to the array
	@ r1 = the length of the array

	mov	r2, r0 @ r2 is pointing to the array
	mov	r0, #0
loop:	
	ldr r3, [r2]
	add r0, r0, r3  @ add r3 onto running total
	add r2, #4
        subs r1, #1
	bne  loop
	bx lr


// next time, byte at a time
	ldrb r3, [r2]
	add r0, r0, r3  @ add r3 onto running total
	add r2, #1
        subs r1, #1
	bne  loop
	bx lr

	// next time, byte at a time
	ldrb r3, [r2!]
	add r0, r0, r3  @ add r3 onto running total
        subs r1, #1
	bne  loop
	bx lr

