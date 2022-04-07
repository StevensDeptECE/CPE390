	.global main
main:
	ldr	x5, =0x0123456789ABCDEF
	mov     x3, 28
	//this really happens: ldr x5, [pc, #20   ]
	ret
	
