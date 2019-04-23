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
	lsrz	r0, #1 @ if even, divides by 2
	movnz	r1, r0        @ this will work, but it's not faster!
	lslnz	r0, r0, #1
	addnz	r1, r1, r0
	addnz	r0, r1, #1
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
