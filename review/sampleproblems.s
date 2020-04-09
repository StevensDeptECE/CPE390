	.global _Z1aii
	.fnstart
_Z1aii:
	add	r0, r0, r1
	and	r2, r1, #5
	eor	r3, r0, #6
	mvn	r0, r3
	bx	lr

	.global _Z1bii
_Z1bii:
	subs	r0, #1
	lsl	r1, #1
	add	r1, #1
	bne	_Z1bii
	bx	lr

	.global _Z1cii
_Z1cii:
	add	r2, r1, r0          @r0:  FED19A02+
	and	r2, #6              @r1:  9185ABC3
	mvn	r0, r2	    	    @r2 = 905745C5    0101 AND
	bx lr                       @     00000006    0110
	                            @r2=  00000004    0100
			            @r0 = FFFFFFFB    1011
	.global _Z5test1v
_Z5test1v:
	ldr	r0, =0xFED19A02
	ldr	r1, =0x9185ABC3
	bl	_Z1cii
xxx:	

	@highlight flags
	.global _Z1dii
_Z1dii:
	mov	r2, #5
	mov	r3, #4
	cmp	r2, r3	@ r2-r3		if r2=r3, then Z = 1
	@	beq     equal
	@ble	xxx		@Z = 1 OR   N = 1
	@bge	xxx		@Z = 1 OR N = 0
	subs	r0, #3			@sub then cmp against 0
	
	
	mov	r0, #0
	mov	r1, #255
	mov	r2, #256
	mov 	r2, #0xFFFFFF
	ldr	r2, =0xA5A5A5A
	mov	r3, #260

	#mov	r3, #950	
	ldr	r3, =3
	bx	lr
	
	.global _Z1ev
_Z1ev:
	push	{r4,r5}
	mov	r4, #44
	mov	r5, #22
	pop	{r4,r5}
	bx 	lr
	
