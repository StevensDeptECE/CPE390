	.global main
main:
	@ for (int i = 0; i < 100; i++)

	mov	r0, #0
loop:	
	add	r0, #1
	cmp	r0, #99
	ble	loop
	bx	lr
