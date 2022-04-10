	.global main
main:
	stp lr, x0, [sp, #-16]!// push lr here so code works  sp=sp-16, then write

	bl f

	// pop to recover
	ldp lr, x0, [sp], #16 // 16 matches -16
	ret // and end the program

f:
	mov x0, #23
	mov x1, #18
	and x2, x0, x1 // x2=
	orr x3, x0, x1 // x3=
	eor x4, x0, x1 // x4=
	mvn w5, w4
	ror x5, x5, #3 // rotate right
	// example: if your register were 8 bits
	// x5 = 10110000
	ret
