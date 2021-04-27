	mov r0, #18  @ 0x12   0001 0010
	mov r1, #26  @ 0x1A   0001 1010
	and r2, r0, r1@         1   2
	eor r3, r0, r1@         0   8
	orr r4, r0, r1@         1   A
	

	//    10000000
	
	//rol does not exist
//	rol r0, #1
	ror r0, #31

//	rol r0, #2
	ror r0, #30


	mul	r0, r1	@r0 = r0 * r1

	// left shift k means * 2 to power k
	lsl	r0, #3  @  r0= 101000       =40


	// right shift k means / 2 to power k
	lsl	r0, #4  @  r0= 10   40/16 = 2       
