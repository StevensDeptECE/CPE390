	.global  main
main:
	mov	r0, #5 @ r0 = 5        0000000000000000000101000000
	mov	r1, #3 @ r1 = 3
.L1:
	lsl	r0, r1 @ r0 = 40,  80
	subs	r1, #2 @ r1 = 1, -1
	bgt	.L1
	bx 	lr
