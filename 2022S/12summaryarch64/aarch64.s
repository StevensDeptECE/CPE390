	.global main

main:
	mov	x0, x1		// register-register
	movn    x0, x2		// move and negate
	add	x5, x6,x7
	add	x6, x4, #12     //immediate
	
	ldr	x0, [x1]        //indexed
	ldr	x0, [x1], #8    //autoincrement  load [x1] then x1=x1+8
	ldr	x0, [x1, #16]   //offset  load memory [x1+16] (does not change x1)
	ldr     x0, [x1, #-16]! // preincrement: x1=x1-16, then load[x1]

	str	x30, [sp, #-16]! // push onto the stack

	ldr     x30, [sp], #16   // pop off the stack

	ldr     x0, [x1, x2 lsl #2] // load location [x1+x2*4]

	stp	lr,x0, [sp, #-16]! // push onto the stack
	ldp     lr,x0 [sp], #16   // pop off the stack

	add	x0, x1, x2
	add	x0, x1, #2	
	sub	x0, x1, x2
	sub	x0, x1, #2	
	and	x0, x1, x2
	and	x0, x1, #2	
	orr	x0, x1, x2
	orr	x0, x1, #2	
	eor	x0, x1, x2
	eor	x0, x1, #2
	mul	x0, x1, x2
	mul	x0, x1, #2	
	udiv	x0, x1, x2
	sdiv	x0, x1, x2
	// to calculate mod,
	// a - a/b*b



	// the default is ALWAYS execute
	add	x0, x1, x2
	add	x0, x1, #2	

	cmp	x2, x3
	addgt	x0, x1, x2
	addle	x0, x1, #2	


	cmp	x0, x1
	bgt	1f
	add     x1, x1, #1
1:	
