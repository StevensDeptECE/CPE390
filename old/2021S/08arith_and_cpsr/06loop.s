	.global main
main:
	mov	r0, #100
1:
	subs	r0, #1
	bge	1b
	bx	lr
	
	mov	r0, #100
1:
	sub	r0, #1
	cmp	r0, #0
	bge	1b
	bx	lr


	mov	r0, #100  @ (for int i = 100 ; i > 0; i--)
1:
	cmp	r0, #0
	beq	2f
	sub	r0, #1
	b	1b
2:	
	bx	lr
