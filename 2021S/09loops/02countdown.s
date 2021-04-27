	.global main
main:
	ldr	r0, =#3000000000
loop:
	subs	r0, r0, #1  @N=  Z=0
	bne	loop
	bx	lr


