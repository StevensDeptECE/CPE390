	.global	_Z1fi
_Z1fi:
	push	{lr}
	b	.testme
.loop:
	mov	r1, r0
	ldr	r0, =fmt
	bl	printf
	mov	r0,r1    @ get r0 back
	
	tst	r0, #1
	bnz	.odd
	lsr	r0, #1
	cmp	r0, #1
	bgt	.loop
	pop	{lr}
	bx	lr
.odd:
	mov	r1, r0
	lsl	r0, r0, #1
	add	r1, r1, r0
	add	r0, r1, #1
.testme:
	cmp	r0, #1
	bgt	.loop
.exit:
	pop	{lr}
	bx 	lr
	
	ldr 	r0, =message
	bl	_puts
	
        @   123456576
	@ * 124125125


message:.asciz "testing"
fmt:	.asciz "%d"
