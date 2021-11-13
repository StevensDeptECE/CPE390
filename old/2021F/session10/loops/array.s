	.global	_Z3sumPKii

	//r0 = address of the first element of the array
	//r1 = number of elements
	// assume: at least len =1
_Z3sumPKii:
	mov	r2, #0 // sum = 0
1:	
	ldr	r3, [r0] // load r3 from each element of the array
	add	r2, r3   // sum = sum + x[i]
	add	r0, r0, #4 // advance to next element
	sub	r1, #1
	cmp	r1, #0
	bne	1f

	mov	r0, r2
	bx	lr
	
