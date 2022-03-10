	.global main
main:
	ldr	x0, =data
	ldr     x1, [x0]
	ldr     w2, [x0]
	ldr     x2, [x0, 4]
	ldr     w2, [x0, 4]
	ldr     x3, [x0], 8  // post-increment
	ldr     x6, [x0, 8]! // pre-increment	
	ldr     w4, [x0, -4]
	mov     x1, 2
	ldr     x5, [x0, x1, lsl 3]
	ret
data:
	.dword 0x1111111122222222
	.word 0x12345678
	.word 0x9ABCDEF0
	.word 0xA5A5A5A5
	.word 0x5A5A5A5A
	.word 0x0
	.word 0x1
	.word 0x2
	.word 0x3
