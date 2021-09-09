	.global main
main:
	push	{r4,r5} @ save pairs of registers at a time, preserve 64-bit memory alignment
	ldr	r0, =0xACE01234
	ldr	r1, =0xc0dec123
	and	r2, r0, r1   @r2 =???
	orr	r3, r0, r1   @r3 =???
	eor	r4, r0, r1   @r4 =???
	mvn	r5, r0       @r5 =???
	lsl	r4, #5
	lsr	r4, #3
	ror 	r5, r3, #15	
	pop	{r4,r5}
	bx	lr
