	mov	r0, #246   @r0 = _______
	mov	r1, #17    @r1 = _______
	and	r2, r0, r1 @r2 = _______
	orr	r3, r0, r1 @r3 = _______
	eor	r4, r3, r1 @r4 = _______
	mvn	r5, r0     @r5 = _______

/*
convert decimal to binary
	128 64 32 16 8 4 2 1
246   	1   1  1   1 0 1 1 0      000000f6

129	1   0  0   0 0 0 0 1      00000081

138	1   0  0   0 1 0 1 0      0000008a


99      0   1  1   0 0 0 1 1


1238751                   xxxx011111
	
*/	

	mov	r0, #6
	lsl	r0, #5    @r0= 6*32 =192
	lsr	r0, #5	  @r0= 6
//0000000000000000000000000000000
	lsr	r0, #3	  @r0 = 0
	lsl	r0, #3    @r0 = 0

	mov	r0, #52   @  110100
	lsl	r0, #31   @000000000000000000000000000000
	lsr	r0, #31	@r0 = 0


	ldr	r0, #0xFE2C1033   //  0011 multiples of 4 last 2 bits = 00
	lsr	r0, #2            // first right shift, wiping out the right 2
	lsl	r0, #2		  // then left shift

	//       1001111010110101011010101010101001010101011
	//mask = 1111111111111111111111111111111111111111100
	//       1001111010110101011010101010101001010101000
	// this and will wipe out the last 2 bits
//	ldr	r1, =0xFFFFFFFC //    1100
	//	and	r0, r1
	
	// BIt Clear  = r1 AND NOT val
	// bic will do it faster
	bic	r0, #3  //0011

	ldr	r0, #0xFE2C1036   //  0110   0000  1000
	bic	r0, #7            // wipe out the rightmost 3 bits 111
	
	


	mov	r0, #197	//     11000101
	and	r0, #1		//keep only the rightmost bit (number mod 2)
	                        //     00000001

	
	mov	r0, #197	//     11000101
	bic	r0, #1		//keep everything BUT the rightmost bit
	                        //     11000100



	ldr	r0, =0xABCE1234
	// wipe out the rightmost 5 bits   11111 = ???
	// 1
	// 11
	// 111
	// 1111
	// 1 1111  0x1F
//	lsr	r0, #5
//	lsl	r0, #5

	//	and	r0, #0xFFFFFFE0   1110 0000

	//ldr	r1, =0xFFFFFFE0
	//and	r0, r1

	bic	r0, #31
	

	
	//De Morgan
	// NOT A AND NOT B =	NOT( A OR B)  = A NOR B
	// NOT A OR NOT B =     NOT( A AND B) = A NAND B
	// NOT(NOT A AND NOT B) = A OR B

	

	ldr	r0, =0x1235B987 //0001 0010 0011 0101 1011 1001 1000 0111
  	//0001 0010 0011 0101 1xx1100110000111
        //0000 000000000000000011

	
	//1111 1111 1111 1111 1001 1111 1111 1111 AND (kill with zeros)
	//0000 0000 0000 0000 0110 0000 0000 0000 BIC (kill with ones)

	mov	r1, #3 // 11
	lsl	r1, #13
	bic	r0, r1  @ kill the hated xx bits
	// how about setting bits x to 1?
	//	yyyyyyyyyyyyyyyyyyyxxyyyyyyyyyyyyyyyyyy
        //      000000000000000000011
	//	orr	r0, r1 lsl r2

	mov	r1, #3
	lsl	r1, #18
	orr	r0, r1


0001abc:	mov	r0, #123 @r0 =    pc=




	____ r0, #0   @ initialize to zero
1:
	
	____	r0, #1   @count up
	cmp	r0, #100
	bne	___
