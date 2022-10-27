	.global main
main:
	mov	x0, #3
	mov	x1, #17
	mvn

	// 3-operand instructions
	add	x0, x1, x2 // x0 = x1+x2
	sub	x0, x3, x5 // x0 = x3-x5
	// x0 = x5 - x3
	//      5   5   5
	sub	x0, x5, x3
	sub	x19, x23, x30
	
	mul
	div
	and
	orr
	eor
	// c = a*b + d / e

	mov	x0, #141
	mul	x2, 
