/*
	loop counting down from r0 down to 0
	goes at least once (does not skip if r0=0)
*/
	.global _Z9countdownv
_Z9countdownv:
1:
	//inside of the loop is here
	sub	r0, #1
	cmp	r0, #0
	bne	1b
	bx 	lr

/*
	loop counting down from r0 down to 0
	goes at least once (does not skip if r0=0)
	this version uses subs, (subtract and set flags)
	eliminating the need for the compare instruction
*/
	.global _Z10countdown2v
_Z10countdown2v:
1:
	//inside of the loop is here
	subs	r0, #1
	bne	1b
	bx 	lr

/*
	loop counting up from 0 to r0
	goes at least once (does not skip if r0=0)
	this version uses subs, (subtract and set flags)
	eliminating the need for the compare instruction
*/
	.global _Z7countupv
_Z7countupv:
	mov	r1, #0
1:
	//inside of the loop is here
	add	r1, #1
	cmp	r1, r0
	bne	1b
	bx 	lr

	
