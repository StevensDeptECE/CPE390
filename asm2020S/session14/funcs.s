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

	.global _Z6fasterv
_Z6fasterv:
	push    {r4}
	mov	r4, #7
	mov	r3, #6
	mov	r2, #5
	mov	r1, #4
	mov	r0, #3
	bl	f
	pop	{r4}
	bx	lr

f:
	add	r0, r0,r1
	add	r2, r2,r3
	add	r2, r4
	add	r0, r2
	bx	lr

	@ suppose g is supposed to execute a loop r0 times
	@ what if r0 = 0 already? 
g:
	cmp	r0, #0
	b	checkfirst
.L1:
	@ bl	something
	subs	r0, #1
checkfirst:
	ble	.L1
	bx	lr
