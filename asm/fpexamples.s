/*
	Benchmark floating point add in a loop
*/
	.global _Z5fpaddv
_Z5fpaddv:
1:	
	vadd.f64	d0, d1, d2
	subs		r0, #1
	bne		1b
	bx		lr

	.global _Z5fpmulv
_Z5fpmulv:
1:	
	vmul.f64	d0, d1, d2
	subs		r0, #1
	bne		1b
	bx		lr

	.global _Z5fpmlav
_Z5fpmlav:
1:	
	vmla.f64	d0, d1, d1
	subs		r0, #1
	bne		1b
	bx		lr

	.global _Z6fpsqrtv
_Z6fpsqrtv:
1:	
	vsqrt.f64	d0, d1
	subs		r0, #1
	bne		1b
	bx		lr

/*
	benchmark what C++ generates for sqrt(x)
	which includes error checking code to check for negative
	and is a lot bigger
*/
	.global _Z9cppfpsqrtv
_Z9cppsqrtv:


/*
	Given 2 3-d vectors (d0,d1,d2) and (d3,d4,d5)
	Compute the dot product and return in d0
*/
	.global _Z3dotdddddd
_Z3dotdddddd:
	vmul.f64	d0, d3
	vmla.f64	d0, d1,d4
	vmla.f64	d0, d2,d3
	bx	lr
