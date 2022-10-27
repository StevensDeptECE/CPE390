sumeven:
	mov	x2, x0
	mov	x0, #0
1:
	ldr	x3, [x2], #8
	tst     x3, #1
	bne     2f
	add     x0, x0, x3
2:	
	subs    x1, x1, #1
	bne     1b
	ret

	.global main
main:
	stp lr,x0, [sp, #-16]!
	adrp x0, data
	bl  sumeven
	ldp lr,x0, [sp], #16
data:
	.dword 1, 3, 5, 2, 4
