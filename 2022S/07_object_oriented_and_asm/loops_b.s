	.global	main
main:
	mov	x1, 0 // sum = 0
	mov	x0, 1
loop:
	add	x1, x1, x0 // sum = sum + x0 sum  = 1+2+3+4
	cmp	x0, 4
	add	x0, x0, 1 // immediate mode  x0=5
	bne	loop

	mov w0, 0
	ret
	
