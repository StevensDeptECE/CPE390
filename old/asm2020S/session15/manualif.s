	@ if r0 < r1 set r2 = 5 else r2 = 19

f:
	cmp r0, r1
	blt .true
        mov  r2, #19
	bx   lr
.true:
	mov	r2, #5
	bx   lr

f2:	@ better code (this only is better for VERY SHORT SEQUENCES OF CODE
	cmp   r0, r1
        movlt r2, #5
	movge r2, #19
	bx    lr
