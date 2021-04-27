	.global main
main:
/*
	at the lowest, circuit level, the computer is built out of
	CMOS Complementary Metal Oxide Semiconductor

	N-channel MOSFET bring gate high, bring the other side LOW  NOT
	we prefer N-channel because resistance is 1/3 P
	
	P-channel MOSFET bring the gate HIGH, bring the side HIGH

	NAND (NOT AND)
	NOR (NOT OR)

	NAND-flash

	AND = NOT NAND

	A	B	AND	NAND	OR	NOR	XOR
	0	0	0	1	0	1	0
	0	1	0	1	1	0	1
	1	0	0	1	1	0	1
	1	1	1	0	1	0	0	
	*/
	mov	r0, #3     // 0000000000000000011
	mov	r1, #5     // 0000000000000000101

	and	r2, r0, r1 // 0000000000000000001
	orr	r3, r0, r1 // 0000000000000000111 = 7
	eor	r4, r0, r1 // 0000000000000000110 = 6
	bic	r5, r0, r1// BIT CLEAR (r5 = r0 AND NOT t1)
	// mvn = MOVE AND NEGATE (NOT)
	mvn	r5, r0     // 1111111111111111100 = ???

	/*
	2s complement

	11111111111111111111111100
	00000000000000000000000011
	00000000000000000000000001 +
	==========================
	00000000000000000000000100 = 4

	the number is -4

	111111111111111111111111111111110110 ==?
	000000000000000000000000000000001001 = 9
	000000000000000000000000000000001010 = 10  number = -10



	10000001
	01111110 = 2+4+8+16+32+64 = 126
	00000001+
	========
	01111111

	0
	1
	2
	3
	4
	5
	6
	7
	8
	9 	1001
	A	1010
	B	1011
	C	1100
	D	1101
	E	1110
	F	1111

	
	*/

	ldr	r0, =0xDEADBEEF	// 1101 1110 1010 1101 1011 1110 1110 1111
	ldr	r1, =0x900FE2C1	// 1001 0000 0000 1111 1110 0010 1100 0001
	and	r2, r0, r1	// 1001 0000 0000 1101 1010 0010 1100 0001
	//0x900DA2C1
	orr	r3, r0, r1 	// r3 =
	xor	r4, r0, r1	// r4 =

	bx	lr
