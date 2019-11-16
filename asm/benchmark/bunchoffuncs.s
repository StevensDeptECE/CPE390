	.text	
	.global _Z7countupj
_Z7countupj:
	.fnstart
        mov r1, #0
.loop:	
	add r1, #1
	cmp r1, r0
	blt .loop
	bx lr

	.global _Z9countdownj
_Z9countdownj:
.loop2:	
	subs r0, #1
	bgt .loop2
	bx lr

	.global _Z8multiplyj
_Z8multiplyj:
.loop8:
	mul	r1,#2
	subs r0, #1
	bgt .loop8
	bx lr

		.global _Z6addingj
_Z6addingj:
.loop8:
0	add	r1,r1
	subs r0, #1
	bgt .loop8
	bx lr


	.global _Z5visitPii
_Z5visitPii:	
.loop3:
	ldr	r2, [r0]
	add	r0, #4
	
	subs r1, #1
	bgt .loop3
	bx lr

	.global _Z9readwritePii
_Z9readwritePii:	
.loop4:
	ldr	r2, [r0]
	str	r2, [r0]
	add	r0, #4
	
	subs r1, #1
	bgt .loop4
	bx lr

	.global _Z5read1Pii
_Z5read1Pii:	
.loop5:
	ldr	r2, [r0]
	subs r1, #1
	bgt .loop3
	bx lr
	

	.global _Z8readskipPii
_Z8readskipPii:
	push {r4,r5	}
	
	mov	r3, r0
	mov	r4, r0
	add	r4, #60
	mov	r5, r1
	.loop7:	
	mov	r0, r3
	mov	r1, r5
	.loop6:
	ldr	r2, [r0]
	add	r0, #64	
	subs r1, #16
	bgt .loop6
	add	r3, #4
	cmp	r3, r4
	ble	.loop7

	pop {r4,r5}
	bx lr

	

	
