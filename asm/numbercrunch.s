	mov	r0, #5
	mov	r1, #3    @0000000000000000000000000000000011
	ldr	r2, #=76
	add r6,r0,r1	@ r6=8 
	sub r7,r1,r2 	@ r7=3-76 = -73
        @r1 = 0000000011
	@                            64 32 16 8 4 2 1
	@r2 =    1001100              1   0  0 1 1 0 0
	@        0000000
	and r3,r1,r2	@ r3 = 0
	@ r0 = 101
	@ r1 = 011
	@ ========
	@      111=7
	
        orr r4,r0,r1    @7 
        @r1 = 0000000011
	@r2 =    1001100
	@              

	eor r5,r1,r2    @



	@ r0  0011 1110 1101 = 0x3ED
	@ r0  001 111 101 101
	@ AND   1 101 101 101  	removes write capability
	@

	@ to set one bit
	@  11010101x1010010
	@  0000000000000001
	@ shift it into position
	@  0000000010000000
	@ OR (bit is not SET)

	@ to clear one bit
	@  11010101x1010010
	@  0000000000000001
	@ shift it into position
	@  0000000010000000
	@ INVERT
	@  1111111101111111
	@AND (bit IS CLEARED)

	
