	@ comment ...

	// c++ comments also seem to work

	.global x    @ export the symbol x to other files


x:		@ define the address x is right here
	.fnstart	@ assembly directive telling it a function starts here


	mov	r0, #0
	mov	r5, #7
	ldr	r10, =#100
	ldr	r9, =#0xFFFFFFFF @ about 4.2 billion
	@ note: in c++ DO NOT USE leading 0   0315677

	add	r2,r1,r0	@ r2 = r1 + r0
	add	r2,r1		@ r2 = r2 + r1
	sub	r3,r1,r0	@ r3=r1-r0
	sub	r3,r0,r1	@ r3=r0-r1
	sub	r3,r0		@ r3=r3-r0
	mul	r4,r0,r1	@ r4=r0*r1
	@ OBVIOUSLY I HAVE THIS ONE WRONG!!!umul	r4,r0,r1	@ r4 = unsigned multiply r0*r1

	@   12*14 = 168
	@   99
	@  *99
	@ ====
	@  891
	@ 8910
	@ 9801

	@	A   B    AND
	@	0   0	 0
	@	0   1	 0	
	@	1   0    0
	@       1   1    1
	
	@ 1010 1010 1010 1011 1111 0000 0010 0101 0xAA
	@ 0000 0111 1001 1100 1110 1010 1010 1010
	

	@ AND = and
	@ OR  = orr
	@ XOR = eor
	and r2,r1,r4	@r2 = r1 AND r4
        orr r3,r1,r2    @r3 = r1 OR r2
	eor r4,r1,r2    @
