	.global copy
	@ r0 = dest
	@ r1 = src
	@ r2 = number of words
copy:
	ldr	r3, [r1!]
 	str	r3, [r0!]
	subs	r2, #1
	bne	copy
	bx 	lr
