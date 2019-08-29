	@return ((a * x + b) * x + c) * x + d;
	.global eval
eval:
	.fnstart
	@ r0 points to a	[R0]=a    [R0,#8]=b	[R0,#16]=c
	@ d1 = x
	VPUSH		{d2, d3, d4, d5}
	VLDR		d3, [r0]
	VLDR		d2, [r0,#8]
	VMLA.f64	d0, d3, d1, d2		@a*x+b
	VLDR		d4, [r0,#16]
	VMLA.f64	d0, d0, d1, d4		@(ax+b)x + c
	VLDR		d5, [r0, #24]
	VMLA.f64	d0, d0, d1, d5		@((ax+b)x + c)x + d

	VPOP	{d2,d3, d4,d5}
	BX 	LR
