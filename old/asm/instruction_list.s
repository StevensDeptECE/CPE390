	@ this is the global list of everything you need to know in ARM assembler for the midterm
	@


	@  A   B     AND    OR   XOR    NAND   NOR
	@  0   0     0      0    0      1      1
	@  0   1     0      1    1      1      0
	@  1   0     0      1    1      1      0
	@  1   1     1      1    0      0      0


	.global _f
_f:

	push	{r2,r3,r4,r5} @ push to the stack

	mov	r2, r0		@ r2 = r0, register to register
	mov	r2, #1		@ immediate mode, number from 0 to 255
	mov	r3, #4
	mov 	r1, r2
	add	r4,r3,r2	@r4=r3+r2	= 5
	orr	r4,r4,#17	@  000000101
		                @       8421
	                        @  000010001
	                        @     010101 =1 + 4 + 16 = 21
	and	r5, r4, #13     @     001101
	                        @     000101 = 5
	eor     r4, r5, #12     @     001100 = 12
	                        @     001001 = 9
	
	@91   = 1 2 4 8 16 32 64 128    64 +16 + 8 + 2 + 1
	@                               1 0 1    1 0 1   1



	mov 	r1, #6		@ 000000000000110
	lsl	r1, #3		@ 000000000110000 
	lsr	r1, #6		@ 
	


	ldr	r0, #1
.L1:
	add	r0, #1
	cmp	r0, #10
	blt	.l1
	pop	{r2,r3,r4,r5} @ get the values back from the stack
	bx 	lr





	ldr	r0, [r1]	@ go to location[r1] in memory, and load into r0
	ldr	r0, [r1, #4]	@ got o location[r1 + 4] in memory, and load into r0





	@assume r0 points to an array
	@assume r1 has the number of elements
	push	{r2,r3}
	mov	r3, #0
.loop:
	ldr 	r2, [r0]
	add	r3,r2,r3
	add	r0, #4
	subs	r1, #1		@ substract and set condition codes
	bnz	.loop
	
	pop	{r2,r3}
	bx	lr

	@ 0000
	@ 0001
	@ 0010
	@ 0011
	@ 0100
	@ 0101
	@ 0110
	@ 0111
	@ 1000
	@ 1001
	@ 1010
	@ 1011
	@ 1100
	




	@ suppose r1 = 0xFFEEDD28
	@ 1111 1111 1110 1110 1101 1101 0010 1000
	@ 0000 0000 0000 0000 0000 0000 1111 1110
	@ 0000 0000 0000 0000 0000 0000 0010 1000
	@                               0001 0001
	@                               0011 1001
	and	r0, r1, #0xfe  @ r0 = 
	or	r0, r0, #0x11
	@r0  = 0011 1001

	mov 	r0, #9 @ 1001
	lsl	r0, #3 @ 1001000  (multiply by 2 to 3rd)

	mov	r0, #9 @ 000000000000000000000000000000001001
	lsr	r0, #2 @ 000000000000000000000000000000000010


	@r1 = 000000000000000010000000000000000000000101
	mov	r0, #1
	lsl	r0, #15
	orr	r1, r1,r0

	mov	r0, #1
	lsl	r0, #23
	mvn	r0,r0

@	======================================


	.global g
g:
	@ r0 points to array of numbers
	@ r1 contains the number of numbers in the list

	push	{r2,r3}
	mov	r3, #0
.loop:	ldr	r2, [r0]
	add	r0, #4
	add	r3, r3, r2
	sub	r1, #1
	cmp	r1, #0
	bge	.loop
	mov	r0, r3
	pop	{r2,r3}
	bx	lr


	push	{r2,r3}
	mov	r3, r0
	ldr	r0, [r3]! @ first element of the sum is in r0
.loop2:	ldr	r2, [r3]! @ load the next one
	add	r0, r0, r2
	subs	r1, #1
	bgt	.loop
	pop	{r2,r3}
	bx	lr
