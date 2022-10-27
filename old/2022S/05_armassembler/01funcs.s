	.globl _Z3addiiii
// in: w0, w1, w2, w3
_Z3addiiii:
	add	w0, w0, w1 // w0 = w0+w1   a = a + b
	add	w0, w0, w2 // w0 = w0+w1+w2
        add	w0, w0, w3 // w0 = w0+w1+w2+w3
	ret

	.global _Z6dividemmmm		
// x0 x1 x2 x3       returns x0/x1 + x2/x3
_Z6dividemmmm:	
	udiv  x0, x0, x1 // x0 = x0/x1
	udiv  x2, x2, x3 // x2 = x2/x3
	add  x0, x0, x2 // x0 has the answer!
	ret

	.globl _Z4prodiiii
// in: w0, w1, w2, w3
_Z4prodiiii:
	mul  w0, w0, w1 // w0 = w0*w1
	mul  w2, w2, w3 // w2 = w2*w3
	mul  w0, w0, w2 // w0 = w0*w1*w2*w3
	ret
	
	.globl _Z3maxmm
	// x0 x1
_Z3maxmm:
	cmp	x0, x1
	bgt	greater
	//less than or equal to...
	mov	x0, x1 // x0 = x1
	ret
greater:
	ret
	


	.globl _Z3maxmmm
	// x0 x1 x2
_Z3maxmmm:
	cmp	x0, x1
	bgt	greater2
	//less than or equal to...
	cmp	x1, x2
	bgt	x1isit
	// x1 <= x2
x2isit:	// x2 is it
	mov	x0, x2
	ret
x1isit:
	mov    x0, x1
	ret
greater2:
	cmp	x0, x2
	ble   x2isit
x0isit:
	ret
