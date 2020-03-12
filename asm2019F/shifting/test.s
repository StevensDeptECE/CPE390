	//r0 = number   r1 is the position in that number to set
_Z3setii:	
	//r0 = ???
	//r1 = 0 position of the bit to set
	//r0 = 101010101010101110000111x
	mov	r2, #1
	lsl	r2, r1  // r1 = 5    000001 --> 100000
	// for signed integers
	// asl (arithmetic shift left)
	// 1010101010001110100x010101010
	// 00000000000000000000000000001
	// 00000000000000000001000000000
	
	// 1010101010001110100x010101010
	// 00000000000000000001000000000
	orr	r0, r0, r2
	// return
	
_Z5clearii:
	// r0 = the number
	// r1 = the position within the number that you ahve to clear
	// r0 = 01010010101010101010x10101010101
	// r2 = 00000000000000000000100000000000
	// r2 = 11111111111111111111011111111111 // mvn mov and NEGATE
	// r0 = 01
	mov	r2, #1
	lsl	r2, r1 // the 1 bit is in the right position
// these two are logically correct, but bic is faster
//	mvn	r2, r2 // flip every bit
//	and	r0, r0, r2
	
	bic	r0, r2 // bic = mvn and and


	
_Z4testii:
	mov r2, #1
	lsl r2, r1

	// r0 = 01010101010101010x0100000000
	// r2 = 0000000000000000010000000000

	tst r0, r2		// and and set flags Z
	bne  


	//comparing multiple bits at the same time....
	
	// suppose r0 = 100x0001110y000100100z00
	//  r2=         000100000001000000000100
	// and r3,r0,r2
	// if all 3 are set
	//  r=          000100000001000000000100	//             
	and r3,r0,r2
	cmp r3, r3	// if the mask is equal to the result, then all bits are set

toggle:
	// r0 = some number
	// r1 = bit position
	// flip the value of bit r1
	mov	r2, #1
	lsl     r2, r1
	eor     r0, r2

	
	

	






	

	mov	r0, #108
	lsl	r1, r0, #3 //
	lsr	r2, r0, #1 // 54
	mov	r0, #5   // 101
	lsr	r0, #1 //  10
        // COOL, but not required this semester: add 	r4, r5, lsl #5


	
