	@ ADD, SUB, MUL, AND, ORR, EOR
	@ MOV, MVN (not)
	@ LDR
	@ LDRB
	@ STR
	@ STRB
	@push, pop
	@cmp
	@bgt, ble bge bne beq
	@bl (call a function)
	@bx lr (return from a function
	@subs (the s form of the instruction that stores the result compared with 0
	@movgt  (mov if greater than)

	.global x
x:	.fnstart
	add	r2, r1,r0    @ r2=14______________
	and	r2, #6       @ r2 = 1101 and 0110 = 0100 = 4
	mvn	r0, r2       @ r0 = 11111111111111111111111111111011   MOVE and NEGATE
	bx lr
w:
	mov	r1, #0
.L1:
	add	r1, #1
	cmp	r1, r0	@ r1 - r0
	bne	.L1

	@
	@ subs r0, r1, r2 is equivalent to 
	@  sub r0, r1, r2				@ Z , N, V
	@  cmp r0, #0
	@

	
y:	
	subs	r1, #1  @ r1 = 3,2,1, 0 
	add	r0, #3  @ r0 = 26, 29, 32, 35
	bne	y
	bx     lr  @r1 = 0

z:
	subs r0, #2  @ r0 = 9, 7, 5, 3, 1
	lsl  r1, #1  @ r1 = 6, 12, 24, 48, 96
	bge  z    @ N = 0  OR z = 1
	mov  r0, r1
main:
	@
	@ difference between mov and LDR
	@
	mov	r0, #255
	ldr	r0, =0xFF2C1A98 --> ldr r0, [pc, #14124]
	

	
	mov	r0, #3
	bl	w
	
	mov	r0, #9
	mov	r1, #5
        bl      x

	mov r0, #23
	mov r1, #4
	bl  y
 	@ r0 = 35

	mov	r0, #11
	mov	r1, #3
	bl	z
	@r0 =???


	push {r4}
	
	mov r4, #9		@ before you can store into registgers higher than r4... PUSH



	pop {r4}
 
