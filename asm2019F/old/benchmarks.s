	.global _Z5counti
_Z5counti:
	.fnstart
.L1:	
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L1
	bx	lr
	
	.global _Z6count2i
_Z6count2i:
	push	{r1}
	mov	r1, #0
.L2:	
	add	r1,r1,#1
	cmp	r1,r0
	blt	.L2
	pop	{r1}
	bx	lr

	.global _Z3addi
_Z3addi:
	push	{r1,r2}
	mov	r1, #1
.L3:
	add	r2,r1,r1
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L3
	bx	lr

	.global _Z3subi
_Z3subi:
	push	{r1,r2}
	mov	r1, #1
.L4:
	sub	r2,r1,r1
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L4
	bx	lr

	.global _Z3muli
_Z3muli:
	push	{r1,r2}
	mov	r1, #1
.L5:
	mul	r2,r1,r1
	cmp	r0, #0
	sub	r0, r0, #1
	bgt	.L5
	pop	{r1,r2}
	bx	lr

	.global _Z4mul2i
_Z4mul2i:
	push	{r1,r2}
	mov	r1, #13
.L6:
	mul	r2,r1,r1
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L6
	bx	lr

	.global _Z4mul3i
_Z4mul3i:
	push	{r1,r2}
	ldr	r1, #.mydata
.L8:
	mul	r2,r1,r1
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L8
	bx	lr
.mydata:
	.word   3413
	.global _Z3divi
_Z3divi:
	push	{r1,r2}
	mov	r1, #1
.L7:
@	bl	__aeabi_idiv

	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L7
	bx	lr


	.global _Z7shifterii
_Z6setbitPii:	
	push	{r2,r3,r4}
	mov	r2, r1
	lsr	r2, #5
	lsl	r2, #2
	add	r2,r2,r0
	ldr	r3, [r2]
	mov	r4, #1
	and	r1, #31
	lsr	r4, r4, r1
	orr	r3, r3, r4
	str	r3, [r2]
	pop	{r2,r3,r4}
	bx	lr
	
