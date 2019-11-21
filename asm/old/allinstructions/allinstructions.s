	.global	_Z1fv
_Z1fv:
	add	r0,r1,r2
	add	r1,r2,r3
	add	r1,#0
	add	r1,#255
	add	r1, r2, #1
	add	r1, r2, #7
	adc	r0,r1,r2
	adc	r0,r1, #7
	sub	r0,r1,r2
	sub	r0,r1,#1
	and	r0,r1,r2
	and	r0,r1,#7
	orr	r0,r1,r2
	orr	r0,r1,#7
	eor	r0,r1,r2
	eor	r0,r1,#7
	lsr	r0,#1
	lsr	r0,#2
	lsr	r0,#31
	lsr	r0,r1
	lsl	r0,#1
	lsl	r0,#2
	lsl	r0,#31
	lsl	r0,r1
	b	.L1
	bgt	.L2
.L1:	ble	.L3
.L2:	cmp	r0, #1
.L3:	cmp	r1, #2
	tst	r2, #255
	bx	lr
	
