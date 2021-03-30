	.global main
main:
	mov	r0, #4
	mov	r1, #5
	mov	r3, #0
	add	r2,r1,r0   @r2=9
	subs	r2, #8     @r2=1  N=0 Z=0
	cmp	r0,r1      @r0-r1 = 4-5 = -1   FFFFFFFF N=1 Z=0
	addgt	r3, r1,r1
	@r3 = 
	sublt	r2, #3  @r2 = 1-3 = -2
	@r2 =

	mov	r0, #6
	mov	r1, #3
	cmp	r0, r1 @ 6 - 3 = 3  N=0 Z=0
	addge	r0, r1 @r0 = 6+3 = 9
	sublt	r0, r1 @r0 = 6-3 = 3
	
	bx	lr
