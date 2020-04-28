<<<<<<< HEAD
	mov	r0, #0	@
	add	r0, #3	@ immediate mode

	add	r1,r0,r0	@arithmetic operation

	ldr	r2, =#0x1251FFA

        


	
	mov	r2, #0 @ checksum
	ldr	r0, .L1
.loop:	
	ldrb	r1, [r0] 	@ r1 = 'A' the first time...
        cmp     r1, #0
	beq     out
        add     r2, r1  @ r2 = 0+'A'+'a'+'f'
	add	r0, #1
        b       .loop
.L1:	.ascii "AafkjahfaskjfhaksjfhBCDEF"	  	;
=======
	// f(int x[], int n)
	.global	_Z1fpii
_Z1fpii:
	@ r0 = pointing to the array
	@ r1 = the length of the array

	mov	r2, r0 @ r2 is pointing to the array
	mov	r0, #0
loop:	
	ldr r3, [r2]
	add r0, r0, r3  @ add r3 onto running total
	add r2, #4
        subs r1, #1
	bne  loop
	bx lr


// next time, byte at a time
	ldrb r3, [r2]
	add r0, r0, r3  @ add r3 onto running total
	add r2, #1
        subs r1, #1
	bne  loop
	bx lr

	// next time, byte at a time
	ldrb r3, [r2!]
	add r0, r0, r3  @ add r3 onto running total
        subs r1, #1
	bne  loop
	bx lr
>>>>>>> 52812aeb688e15c73857ec352cd0b9e164309b8c

