	.global main
main:
	ldr	r0, =0x54679AB2
	lsl	r0, #1		//0101 0100 0110 0111 1001 1010 1011 0010
				//1010 1000 1100 1111 0011 0101 0110 0100
	// 92   920
	// lsl means multiply by 2 to the power #

	ldr	r1, =0xD6B7C1B2
	// express in hex
	lsl	r1, #3		// r1=0x

	mov	r0, #22
	lsl	r0, #4		//r0 =0x
	
	//123   1*100 + 2*10 + 3
	//0x123 1*256 + 2*16 + 3
	//0123	1*64+2*8+3

	mov	r0, #11 //  00000000001011 = 11
	lsr	r0, #1	//  00000000000101 = 5

	// arithmetic shift left or right
	// leave the sign bit as it is. Shift from bit position 30
	// 31 30 29 .....   0
	ldr	r0, =0xEFFFFFE	//r0 = 
	//         11111111111111111111111111110000
	//         1010xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	//         110xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	//         10xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	//         1xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//	asl	r0, #3		// -2*8 = -16

	ldr	r0, =0xFFFFFFFE // -2
	//  11111111111111111111111111111111
	asr	r0, #1

	ror	r0, #1
// this doesn't exist, use ror!	rol	r0, #31
	bx	lr	
