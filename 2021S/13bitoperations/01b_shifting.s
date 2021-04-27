main:
	mov	r0, #23 // r0 = 000000000000000010111
	mov	r0, #47 // r0 = 00000000000000000000101111 = 47
	lsr	r0, #3  // r0 = 00000000000000000000000101 = 5
	// shift right by n = / (2 to n)
	// shift left by n = * (2 to n)

	ldr	r0, =0xFFFFFFFE // 1111 1111 1111 1111 1111 1111 1111 1110
	// twos complement
	// first invert every bit
	//0000 0000 0000 0000 0000 0000 0000 0001
	// then add 1
	//0000 0000 0000 0000 0000 0000 0000 0010	= 2  (original number = -2)

	
	//lsr	r0, #3// would turn positive: 0001111 1111 1111 1111 1111 1111 1111 1

	// arithmetic shift right preserves the sign bit
	asr	r0, #1/  1111 1111 1111 1111 1111 1111 1111 1111

	mov	r0, #123	// 0000000000000000001111011    123 / 16 --> 7
	asr	r0, #4		// 0000000000000000000000111 = 7    7*16 = 112

	ror	r0, #1		// 1100000000000000000000011

	// does not exist   rol	r0, #1
	ror	r0, #31		// 0000000000000000000001110
