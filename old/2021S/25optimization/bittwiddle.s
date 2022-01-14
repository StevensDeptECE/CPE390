	@r0 = n, 0, n, 0...
togglen:	
	cmp r0, #5
	beq 1f
	mov r0, #5
	bx  lr
1:	
	mov r0, #0
	bx lr

togglen2:	
	cmp r0, #5
	moveq	r0, #0
	movne	r0, #5


togglen3:
	rsb	r0, r0, #5 @r0 = 5 - r0
	bx	lr


	//  5 --> 8    101 --> 1000
	// 196 --> 256 11000100 --> 100000000
	// 11111111111
	//          +1
	//100000000000
	// 0000011111111100101010100101010101010
	// n = 17 = 00010001
	//              0001
	//          00010001
	//          00000100
	//          00010101
	//           0001010
	//          00011111
//	+1



	
	@r0 = n
	@ output: r0 = power of 2 higher than the number coming in
powerof2:
	//or r0 with r0 >> 16
	orr	r0, r0, r0 lsr #16
	orr	r0, r0, r0 lsr #8
	orr	r0, r0, r0 lsr #4
	orr	r0, r0, r0 lsr #2
	orr	r0, r0, r0 lsr #1
	add	r0, #1
	bx	lr

	@r0 = number  10111010101010101011
	@output r0 = count of 1-bits in r0 = 12
countbits:
	//on intel, this is called popcount


	@r0 = 10100010  --> 01000101
reverse:
	mov	r2, #32
	mov	r1, #0
1:	
	tst	r0, #1
	orrne	r1, #1
	lsl	r1, #1
	ror	r0, #1
	subs	r2, #1
	bne     1b

	//10100010
	// \    /
        //  \  /
	//   \/
	//   /\
	//  /  \
	// /    \
	//
reverse2:
	rbit r0
	bx	lr
	
