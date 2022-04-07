	.global _Z4factm
	//x0   return x0
_Z4factm:
	mov	x1, x0 // x1 = n

	//	now calculate n!
	mov	x0, 1  // x0 will hold factorial= 1*2*3*4*5*....
	mov	x2, 1 // x2 counts up to n
loop:
	mul	x0, x0, x2 // prod=prod*x2
	add	x2, x2, 1 // x2 = x2 + 1
	cmp	x2, x1
	ble	loop
	ret
	
	
	
