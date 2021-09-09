	.global main
main:
	push	{r4}   @sp=sp-4  store r4 --> [sp]  
	push	{r5}   @sp=sp-4  store r5 --> [sp]
	
	mov	r4, #32
	mov	r5, #209

	pop	{r5}  @ r5=load[sp] sp=sp+4
	pop	{r4}  @ r4 = load[sp] sp = sp + 4
	bx	lr


	
