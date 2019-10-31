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

