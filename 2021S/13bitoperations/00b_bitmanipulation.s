	.global main
main:
	push	{r4}
	ldr	r0, =0xF1234567  // 1111 0001 0010 0011 0100 0101 0110 0111
	ldr	r1, =0xDEADBEEF  // 1101 1110 1010 1101 1011 1110 1110 1111
	and	r2, r0, r1       // 1101 0000 0010 0001 0000 0100 0110 0111
	//                       0xD0210467
/*

	A	B	OR	XOR
	0	0	0	0
	0	1	1	1
	1	0	1	1
	1	1	1	0

*/
	orr	r3, r0, r1 	 // 1111 1111 1010 1111 1111 1111 1110 1111
	eor	r4, r0, r1	 // 0010 1111 1000 1110 1111 1011 1000 1000
	mvn	r1, r0		 // r1 = NOT r0 (move and negate)
	// 1111 0001 0010 0011 0100 0101 0110 0111
	// 0000 1110 1101 1100 1011 1010 1001 1000

	// bit clear is designed to reduce the cost of a common operation
	// a = b AND NOT c
	bic	r5, r0, r1  // r5 = r0 AND NOT r1
	pop	{r4}
