	.global _Z9countdownv
_Z9countdownv:
	mov	r0, #5
	ldr	r1, =#0x61420504
loop:	
	and	r1, r1, r0
	subs	r0, #1
	bne	loop
	bx	lr
