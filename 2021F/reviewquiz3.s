
	

	g(1,2,3) =

	a=1 r0
	b=2 r1
	c=3 r2

	a=2
	c=2
	2*2 + 2 = 6

	

	// r0 = a, r1= b r2 = c
	.global _Z1giii
_Z1giii:
	add	r0, #1
	sub	r2, #1

	mul	r0, r0, r1
	add	r0, r2

	//mla     r0, r0, r1, r2
	bx	lr
	

main:
	mov r1, #6
	ldr r0, .L6
	bl  thatprintingfunctionIcantremember



.L6:
	.word  cout...
