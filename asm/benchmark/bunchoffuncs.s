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

