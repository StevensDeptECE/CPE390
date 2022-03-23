main:
	mov	x0, 3
	mov	x1, 4
	cmp	x0, x1
	cmp	x0, x0
	cmp	x0, #2

	// if (a mod 2 == 0)
	tst     x0, #1 //  is x0 AND 1 == 0   Z "eq" --> even  'ne' -->odd
//	addge	x4,x4,x6
	bne	odd
	beq	even

odd:


even:


