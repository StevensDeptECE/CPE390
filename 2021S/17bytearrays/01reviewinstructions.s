	.global main
main:
	mov	r0, #255	@immediate mode (0..255)
	mov	r0, #65536	@immediate mode (0..255) lsl 16
	mov	r0, #131072
//	mov	r0, #2178       @ 17 << 7
	mov	r0, #12582912
	mov	r0, r1

	ldr	r0, =#123456 @load full 32-bit number
	@really: ldr	r0, [pc, #1230]

	add	r0,r1,r2  @ all arithmetic are general 3-operand instructions
	sub	r0,r1,r2
	lsl	r0,r1,r2  @r0 = r1 << r2
	lsr	r0,r1,r2  @r0 = r1 >> r2
	mul	r0,r1,r2
	// 9999 * 9999
	// 9999
	//*9999
	//=====
	//    1
	//mul??	r0,r1,r2,r3 @64-bit result? I don't remember, therefore you don't have to memorize!

	mov	r1, #8
	mov	r2, #7 
	@ adding the s bit
	adds	r0,r1,r2 @r0=r1+r2 but also sets N=, Z= , C=, V=
	@r0 = 0000000F
	//10xx 01xx
	@ N=0  Z=0
	@FFFFFFFF + 1
	@7FFFFFFF + 1

	mvn	r0, r0  @r0 =FFFFFFF0
	@ N=0 Z=0
	adds	r0, #1  @r0 = FFFFFFF1
	// 00000001
	// 00000010
	// 00000011
	// 00000100
	@ N=1 Z=0
//	ble	wherever	@will it go?


	cmp	r0, r1	@ r0-r1 stores it NOWHERE
	@FFFFFFFF
	@N=1 Z=0
	addgt	r3, r2  @ do the add if n = 0
wherever:	
	and	r0,r1,r2
	orr	r0,r1,r2
	eor	r0,r1,r2
	ror	r0, #4
	bx	lr
.L1:
	.word 1231241212
	sub	r2, r1, r0 	@ r2 = r1-r0
	sub	r2, r0, r1	@ r2 = r0-r1
	sub	r2, r0, #2	@ r2 = r0-2
	rsb	r2, r0, #2	@ r2 = 2 - r0
	


	bx	lr
	mov	r0, #0
	sub	r0, r0, #15	@r0 = r0 - 15
	//-15
	//2s complement arithmetic
	//000000000000000000000000000001111
	//11111111111111111111111111111 0001
	// FFFFFFF1 = -15
	bx	lr
