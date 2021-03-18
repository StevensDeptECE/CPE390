	mov	r0, #198   @r0 = 000000C6_______
	mov	r1, #53    @r1 = 00000035_______
	and	r2, r0, r1 @r2 = _______
	orr	r3, r0, r1 @r3 = _______
	eor	r4, r3, r1 @r4 = _______
	mvn	r5, r0     @r5 = FFFFFF39_______

/*
convert decimal to binary
	128 64 32 16 8 4 2 1
198	1   1  0   0 0 1 1 0
	is 198 even?   1100 0110

53	0011 0101 = 32+16+4+1 = 53 check

136	1   0  0  0  1 0 0 0

27      0011011 = 16+8+2+1



1238751                   xxxx011111
	
*/	

	mov	r0, #5
	lsl	r0, #3    @r0=40
	lsr	r0, #3	  @r0=5

	lsr	r0, #3	  @r0= 0
	lsl	r0, #3    @r0 = 0

	mov	r0, #52   @ rightmost bit = 0
	lsl	r0, #31   @r0 = 0

	// BIt Clear  = r1 AND NOT val
	// bic is often faster

	// clear the rightmost 3 bits of r0
	// using logical shift?
	lsr	r0, #3
	lsl	r0, #3

	// using and
	// and with 111111111111111111111111111111111111 1000
	ldr	r1, #0xFFFFFFF8
	and	r0, r1


	//          00000000000000000000000000000000000000111
	bic	r0, #7
	// 1     = 1
	// 11    = 3
	// 111   = 7
	// 1111  = 15
	// 11111 = 31
	// 00000000000000000000000111110000000
	// 00000000000000001101101100000000000
	bic	r0, #31 lsl #7

	mov	r3, #0x700000


	mov	r2, #38   @  0000 0000 0000 0000 0000 0000 0010 0110
			  @    0    0    0    0    0   0     2   6
	// 123
	
	//De Morgan
	// NOT A AND NOT B =	NOT( A OR B)  = A NOR B
	// NOT A OR NOT B =     NOT( A AND B) = A NAND B
	// NOT(NOT A AND NOT B) = A OR B
	// NOT(NOT A OR NOT B) = A AND B

	ldr	r0, =0x1235B987 //0001 0010 0011 0101 1011 1001 1000 0111
        //0001 0010 0011 0101 1xx1100110000111
  	//0000 000000000000000011
	mov	r1, #3
	lsl	r1, #13   @ move the bits into place
	bic	r0, r1    @clear the bits

	bic	r0, #3 lsl #13


	/*
	A	MASK 	OR
	0	0	0
	0	1	1
	1	0	1
	1	1	1


	*/

	ldr	r0, =0xCB123459
	bic	r0, #f lsl #16
	orr	r0, #8 lsl #16
