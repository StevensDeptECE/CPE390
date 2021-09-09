main:
	mov	r0, #3
	cmp	r0, #4 @ r0-4  N=1 Z = 0
	//blt	gothere
	cmp	r0, #3
//	beq	gothere // check z= 1

	subs	r0, #3
	beq	gothere

	mov	r0, #5  //     00000000000000000 0101
	mov	r1, #6  //     00000000000000000 0110
	
	ands	r2, r0,r1 @r2 = 00000004   N=0 Z=0
	eor	r2,r0,r0  @r2 = 00000000   N=0 Z=0 DOES NOT CHANGE FLAGS!!!
	orr	r2,r0,r1  @r2 = 00000007   N=  Z=
	bic	r3,r0,r1  @r2 = 00000001
	mvn	r0, r0	  @r0 = FFFFFFFA
	// 111111111111111111111111111111111111 1101 0000
	lsl	r0, #3	  @r0 = FFFFFFD0
	ldr	r0, =#0x12345678
	// 0001 0010 0011 0100 0101 0110 0111 1000
	lsr	r0, #2

	// 0000 0100 1000 1101 0001 0101 1001 1110
	//   0   4    8    D    1    5    9    E
	
/*
	A	B	XOR		A BIC B
	0	0	0		0	
	0	1	1		0
	1	0	1		1
	1	1	0		0

	10101101
	11101011 XOR
	========
        01000110
	11101011 XOR
	========
	10101101

*/
