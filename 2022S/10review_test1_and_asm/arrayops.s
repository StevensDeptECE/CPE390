	// x0 returns the sum
	//x0 = pointing to array of 64-bit integers
	//w1 = length of the array 0x00000000dddddddd
sumarray:
	//sub	w1, w1, 1 // n-1
	mov	x3, 0  // sum = 0
1:
	// y = x[i++]
	// y = each element of (x)
	ldr	x2, [x0], 8 // x2 = mem[x0], x0=x0 + 8 autoincrement
	add	x3, x3, x2
	sub	w1, w1, 1 // w1=w1-1
	cmp	w1, 0     // compare to 0
	bne	1b        // if not zero, go back and do it again
	mov	x0, x3
	ret

sumarray32:
	mov	x3, 0
1:	
	ldr	w2, [x0], 4 // x2 = mem[x0], x0=x0 + 4 autoincrement
	add	x3, x3, x2
	subs	w1, w1, 1
	bne	1b
	mov	x0, x3
	ret

sumarray8:
	mov	x3, 0
1:	
	ldrb	w2, [x0], 1 // x2 = mem[x0], x0=x0 + 1 autoincrement
	add	x3, x3, x2
	subs	w1, w1, 1
	bne	1b
	mov	x0, x3
	ret


	.global main
main:
	ldr	x0, p1 // not right!
	mov	w1, 5
	bl    sumarray

	ldr	x0, p2
	mov	w1, 4
	bl    sumarray32

	ldr	x0, p3
	mov	w1, 10
	bl    sumarray8

	ret
p1:	.dword data1
p2:	.dword data2		
p3:	.dword data3	
data1:
	.dword	1,2,3,4,5
data2:
	.word	3, 2, 1, 4
data3:		
	//.ascii:	'hello'
	//.ascii: "testing testing 123"
	
