	.global _Z6addonePii
	// x0 = a, x1 = len
_Z6addonePii:
	//simpler, old way

1:	
	ldr	x3, [x0]  	// read in each element
	add	x3, x3, #1      // add 1 to it
	str	x3, [x0], #4	// write out and advance to next element
	subs	x1, x1, #1	// repeat length times
	bne     1b


	
	mov     x2, #0  // for (int i = 0; i < len; i++)
1:	
	ldr	x3, [x0, x2 lsl #2]  // load a[i]   x2 = i
	add	x3, x3, #1   // a[i] = a[i] + 1
	str	x3, [x0, x2 lsl #2]
	add	x2, x2, #1
	cmp	x2, x1
	bne	1b

	// x0 points to int a[3][4]
	.global _Z12visitcolumnsPii
_Z12visitcolumnsPii:	
	mov x1, #0 //j
	mov x2, #0 //i
1:
	ldr x3, [x0, x2 lsl #4]

	add x2, x2, #1
	cmp x2, #3
	bne 1b
        add x0, x0, #4 // on to the next column!
	add x1, x1, #1
	cmp x1, #4
	bne 1b
	ret
	
