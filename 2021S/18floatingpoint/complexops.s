	.global _Zpl7ComplexS_
	.global _Zmi7ComplexS_
	.global _Zml7ComplexS_	
	@d0 = real part of 1st object a.r
	@d1 = imag part of 1st object a.i 
	@d2 = real part of 2nd object b.r
	@d3 = imag part of 2nd object b.i 
_Zpl7ComplexS_:
	vadd.f64	d0, d0, d2  @d0 = d0 + d2
	vadd.f64	d1, d1, d3
	bx	lr
_Zmi7ComplexS_:
	vadd.f64	d0, d0, d2  @d0 = d0 + d2
	vadd.f64	d1, d1, d3
	bx	lr	
_Zml7ComplexS_:
	vmul.f64	d4, d0,d2  @d4 = d0*d2
@	vmul.f64	d5, d1,d3
@	vadd.f64	d4, d4,d5

	vmls.f64	d4, d1,d3  @d4 = d4 - d1*d3
	bx	lr


	
	// (ar+bi) * (cr+di) = (ac - bd)   (a*d+b*c)i
