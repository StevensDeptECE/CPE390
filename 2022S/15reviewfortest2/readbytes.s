	.global main
main:
	// add push and pop!
	adrp  x0, data
	bl sum
	ret

	//x0 = string zero terminated   h e l l o \0
sum:
	mov	x2, #0 // sum = 0
1:	
	ldrb    w3, [x0], #1
	cmp	x3, #0
	add     x2, x2, x3
	bne	1b

	mov	x0, x2
	ret
data:
	.ascii "hello"
