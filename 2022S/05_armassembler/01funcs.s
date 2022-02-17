	.globl _Z3addiiii
// in: w0, w1, w2, w3
_Z3addiiii:
	add	w0, w0, w1 // w0 = w0+w1   a = a + b
	add	w0, w0, w2 // w0 = w0+w1+w2
        add	w0, w0, w3 // w0 = w0+w1+w2+w3
	ret

	.global _Z6dividemmmm		
// x0 x1 x2 x3
_Z6dividemmmm:	
	udiv  x0, x0, x1 // x0 = x0/x1
	udiv  x2, x2, x3 // x2 = x2/x3
	add  x0, x0, x2 // x0 has the answer!
	ret
