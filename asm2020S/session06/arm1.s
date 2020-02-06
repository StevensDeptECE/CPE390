	@
	@ Author: Dov Kruger
	@ cite: Getting help from the entire CPE390 class
	@
	.global _Z1fv
	.global _Z1fi
_Z1fv:	
	mov	r0, #5
	bx	lr	@badly named return

	// 101 = 4 + 1 = 5
	// 1010 = 8 + 2 = 10
	// 9870
	
_Z1fi:
	lsl	r0, #1
	bx	lr

	
	@add	r0, r0, r0 @r0 = r0+r0
	@add	r0, r0	   @r0 = r0+r0
	@mul	r0, r0, #2


	// this is how logical shift right works
	//	r3 = 1001
	//      r3 = 0010
	//lsr	r3, #2
