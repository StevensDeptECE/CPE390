	.global f
f:
	mov r0, #4 @immediate mode
	ldr r1, =0xFF2c1234   @ [pc, #14124]


	.global _Z1fPii
	@ r0 = array of int, r1 = number of elements
_Z1fPii:
.L1:
	ldr	r2, [r0] @ load r1 from the address at r0
	add	r0, #4
	subs	r1, #1
	bne	.L1
	bx	lr

	.global _Z3sumPii
	@ r0 = array of int, r1 = number of elements
_Z3sumPii:
	mov	r3, #0
.L2:
	ldr	r2, [r0] @ load r1 from the address at r0
	add	r0, #4
	add	r3, r2
	subs	r1, #1
	bne	.L2
	mov	r0, r3
	bx	lr

	.global _Z4sum2Pii
	@ r0 = array of int, r1 = number of elements
_Z4sum2Pii:
	mov	r3, #0
.L3:
	ldr	r2, [r0], #4 @ load r1 from the address at r0 and advance by 4
	add	r3, r2
	subs	r1, #1
	bne	.L3
	mov	r0, r3
	bx	lr

	
	.global _Z3incPii
	@ r0 = array of int, r1 = number of elements
_Z3incPii:
.L4:
	ldr	r2, [r0] @ load r1 from the address at r0
	add	r2, #1
	str	r2, [r0]
	add	r0, #4
	subs	r1, #1
	bne	.L4
	bx	lr

	.global _Z4inc2Pii
	@ r0 = array of int, r1 = number of elements
_Z4inc2Pii:
.L5:
	ldr	r2, [r0] @ load r1 from the address at r0
	add	r2, #1
	str	r2, [r0], #4
	subs	r1, #1
	bne	.L5
	bx	lr


	
	.global _Z1fPci
	@ r0 = array of char, r1 = number of elements
_Z1fPci:
	ldrb	r2, [r0]
	add	r0, #1



	.global _Z3sumPdi
	@ r0 = array of double, r1 = number of elements
_Z3sumPdi:
	vldr.f64  d0, .ZERO
.L6:	
	vldr.f64  d1, [r0]
	add	  r0, #8
	vadd.f64  d0, d1
	subs	  r1, #1
	bne	  .L6
	bx	  lr

	.global copyToRight @buggy!
	@r0 = array, r1 = number of elements
copyToRight:
.L10:
	ldr	r2, [r0]
	str	r2, [r0, #4]
	add	r0, #4
	subs	r1, #1
	bne	10
	bx	lr

	.global copyFirstToAll
	@r0 = array, r1 = number of elements
copyFirstToAll:
	ldr	r2, [r0]
	add	r0, #4
doitagain:	
	str	r2, [r0]
	add	r0, #4
	subs	r1, #1
	bne     doitagain
	bx	lr

	.global copyRightCorrectly
	@r0 = start of array
	@r1 = length
copyRightCorrectly:
	@r0 = r0 + r1 * 4
	lsl	r2, r1, #2
	add	r0, r0, r2
	sub	r0, #4
.L11:
	ldr	r2, [r0, #-4]
	str	r2, [r0]
	sub	r0, #4
	subs	r1, #1
	bne	.L11
	bx	lr
	
.ZERO:
	.word 0x00000000
	.word 0x00000000
.ONE:
	.word 0x00000000
	.word 0x3ff00000 @ 1.0
	
.L99:	.word 0xFF2c1234
