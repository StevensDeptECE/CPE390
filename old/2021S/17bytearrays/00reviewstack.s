	@sp = 7fffc0b8	
main:
	push	{r5, r6}	@what does this do?
	@ sp = sp - 4
	@ str r6, [sp]
	@ sp = sp - 4
	@ str r5, [sp]

	@sp=7fffc0b0
	mov	r5, #23 @00 00 00 17
	mov	r6, #42 @00 00 00 2A
	push	{r5, r6}

	/*
	In gdb, what command would display the memory at the sp?

	x  $sp   display the memory at location sp
	x/x $sp  display in hex
	x/d $sp  display in decimal
	x $sp+4  display the next integer on the stack
	*/
	pop	{r5, r6}

	pop	{r5, r6}	@what does this do?
	@sp = 7fffc0b8

	//	0 1 2 3    4 5 6 7
	
7fffc0b0:	r5______   r6______ @whatever was in these regs when we got in
7fffc0a8:	17000000   2A000000
