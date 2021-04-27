	.global main
main:
	@ for (int i = 0 ; i < 100; i++) ;

	mov	r0, #0
	@2 ** 32 = about 4 billion
	@ signed: +/- 2 billion
	ldr	r1, =#3000000000 @[pc, #1124]
loop:
	add	r0, r0, #1
	cmp	r0, r1
	bne	loop
	bx	lr


