	.global main
main:
	push	{r4,r5}   @ sp=sp-4 store r5 --> [sp]  sp=sp-4  r4--> [sp]
	
	mov	r4, #22
	mov	r5, #38
	push	{r4,r5,r6,r7}
	
	mov	r4, #32
	mov	r5, #209

	pop	{r4,r5,r6,r7}
	pop	{r4,r5}
	bx	lr

	@examples of popping multiple registers...
	push {r4-r8}
	push {r4, r6-r8}
	

	
