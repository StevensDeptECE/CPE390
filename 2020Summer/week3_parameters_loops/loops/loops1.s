	.global main

main:
	@ count down with cmp
	mov	r0, #10
.loop:	
	sub	r0, #1
	cmp	r0, #0
	bgt	.loop


	@count down using subs (more efficient)
	mov	r0, #10
1:	
	subs	r0, #1  @ sets z if result = 0, N if result < 0, etc.
	bgt	1b


	@count up
	mov	r0, #0
1:	
	add	r0, #1
	cmp	r0, #10
	bne	1b
	mov	r0, #0 @ main returns zero saying "everyone is ok!"
	bx 	lr
