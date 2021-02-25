	.global main
main:
	mov	r0, #3
	mov	r1, #4
	cmp	r0, r1   @ r0 - r1 < 0 (N=1)
	cmp	r1, #4	@ r1-4 == 00000000000000000000000000 (N=0, Z=1, V=0,C=0        cmp     r0, #2   @r0-2 (N=0, Z=0, V=0, C=0)
	
	cmp	r0, r1	@ r0 - r1 and set the CPSR
	@ if r0-r1 is negative, what does that mean?
	@ if r0-r1 = 0
	bne	notequal  @really branches if z = 0
        @ this is pointless: it MUST BE EQUAL beq	eq
	bx	lr
notequal:
	mov	r3, #56
	bx	lr
