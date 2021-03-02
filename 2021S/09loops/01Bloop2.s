	.global main
main:
	@ for (int i = 0 ; i < 100; i++) ;

	mov	r0, #0
	ldr	r1, =#2000000000 @[pc, #20]
loop:
	add	r0, r0, #1
	cmp	r0, r1   @ compute r0-r1 and set flags: N=1 Z=0 V=1 C=0
	blt	loop	   @ blt is the same for this loop
	bx	lr

x:	.word	1000000000
