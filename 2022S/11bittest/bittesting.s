	// how to tell if a register is ODD or even?
	// suppose x0 = some number
	// 1010101010011010
bittest:
	and   x1, x0, #1 // x1 = x0 AND 1
	cmp   x1, #0
	bne   odd
	// even
	
        tst   x0, #1
	bne   odd
	// even
	
        tst   x0, #1
	beq   even
	// odd
	umul x5, x5, #19
even:	
	// new trick! conditional instructions

	tst    x0, #1
	umulne x5, x5, #19

	b    gothere // always go there

	beq  somewhere // go to somewhere if Z=1
	
	
