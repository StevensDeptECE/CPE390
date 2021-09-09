mycode:
	mov	r0, #3
	mov	r1, #51
	bx	lr


	@ d0 = x , d1 = y
hypot:
	vmul.f64  d0, d0, d0  @d0 = d0 *d0
	vmul.f64  d1, d1, d1
	vadd.f64  d0, d1      @d0 = d0 + d1
	bx	lr

	@ d0 = x , d1 = y
hypot2:
	vmul.f64  d0, d0, d0  @d0 = d0 *d0
	vmla.f64  d0, d1, d1  @d0 = d0 + d1*d1
	bx	lr

	.global main
main:
	@if you call a function (on ARM, using ARM binary convention)
	@expect that registers r0..r3 could be wiped out

	@so if you have values in r0 and r1, save them
	
	mov	r0, #100000
	push	{lr,r0}
	push	{r4,r5}
	mov	r4, #27
	mov	r5, #51
1:	
	bl 	mycode   @ lr points to next instruction
	subs	r0, #1
	bne	1b

	pop	{r4,r5}
	pop	{pc,r0}
	@program ends here because we return the pc to wherever we came from
	@   cin >> x	;
	@r0 = cout
	@r1 location of x
	vldr.f64 d0, [r1]  @load from memory location r1
	
