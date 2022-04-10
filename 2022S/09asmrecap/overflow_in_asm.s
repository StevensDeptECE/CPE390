	.global main
main:
	mov	x1, #40
	mov	w0, #1
1:	
	lsl	w0, w0, #1 // x0 = x0 << 1  (x0 = 2*x0 but faster)
	subs	x1, x1, #1 // x1 = x1 - 1 (count down
	bne	1b
	ret
	

	
	
