	.global main
main:
	@ for (int i = 0 ; i < 100; i++) ;

	ldr	r0, =#2000000000
loop:
	subs	r0, r0, #1  @subtract, and set the cpsr flags (do a cmp against #0)
	bne	loop
	bx	lr

x:	.word	1000000000
