	.global main
main:
	mov  x0, 9
	mov  x1, 6
	ldr  x2, =data // pseudo-instruction: x2 = 64-bit address data
	
	bl   bitmanip




bitmanip:
	lsl  x0, x0, #3     // x0 = x0 << 3 = x0*8
	lsr  x2, x0, #4     // x2 = x0 >> 4 = x0 / 16
	add  x3, x3, x1, lsl #2 // x1 = x1 + (x1 << 2) = x1*5
	ldr  x4, =0x0123456789ABCDEF
	bfi  x4, x0, #16, #4
	rbit x5, x4
	cls  x6, x5         // position of first 1
	clz  x7, x5         // position of first 0
	cnt  q0, q1         // count of 1 bits
	ldr  x0, =0x0011223344556677
	ldr  x1, =0x8899AABBCCDDEEFF
	extr x7, x0, x1, #8
	ret
	
data:
	.word 0x12345678
	.word 0x9ABCDEF0
	
	
	
