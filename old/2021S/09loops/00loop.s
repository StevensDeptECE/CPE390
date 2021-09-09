	.global main
main:
	@ for (int i = 0 ; i < 100; i++) ;

	mov	r0, #0
loop:
	add	r0, r0, #1
	cmp	r0, #100   @ 	N=1  Z=0 V=1 C=0
	bne	loop	   @ blt is the same for this loop	    bx	    lr
	bx	lr


