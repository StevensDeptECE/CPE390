	.global factorial
factorial:
	@ r0 = n
	@ d0 = return the answer
	vldr d0, =#1
	push {d1, d2}
	vldr d2, =#1
	b check
loop:
        FMOV	d1, r0  @ look up this instruction, convert from int r0 to double d1
	FMUL	d0, d0, d1
	sub    r0, r0, #1
check:	
	cmp	r0, #0
	bgt	loop
out:
	pop {d1}
	bx lr
