	.global _Z1fv

_Z1fv:
	push   {r4,r5}
	mov    r4, #122
	mov    r5, #88
	pop    {r4,r5}
	bx     lr

	@ fastcall convention. Parameters passed in r0, r1, ...
	.global _Z1fi
_Z1fi:
	mov	r1,r0 @ feel free to mess wtih r0, r1, r2, r3
	bx	lr

	.global _Z1fii
_Z1fii:
	add	r0, r0, r1
	bx      lr

	
	.global _Z1fiii
_Z1fiii:	
	add	r0, r0, r1
	add	r0, r2
	bx      lr
	
	.global _Z1fiiii
_Z1fiiii:	
	add	r0, r0, r1
	add	r2,r3
	add	r0, r2
	bx      lr
	
	.global _Z1fiiiii
_Z1fiiiii:	
	add	r0, r0, r1
	add	r2,r3
	add	r0, r2
	ldr	r1, [sp]
	add	r0, r1
	bx      lr
	
	.global _Z1gPi
_Z1gPi:
	ldr	r1, =40000000
.L1:
	ldr	r2, [r0]
	add	r3, #4
	subs	r1, #1
	bne	.L1
	@ now r1 will be zero

	.global _Z1hPi
_Z1hPi:
	ldr	r1, =40000000
.L2:
	ldr	r2, [r0]
	add	r0, #4
	subs	r1, #1
	bne	.L2
	@ now r1 will be zero
