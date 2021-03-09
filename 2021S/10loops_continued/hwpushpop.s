	.global main
main:
	@what is in r4? Whatever value it is, not mine!
        @suppose r4 = 68
	@sp = 0x07bffe080
	push	{r4}   @ sp=sp-4 store r4 --> [sp] COPY TO MEMORY DOES NOT CHANGE!!!
	@ 0 1 2 3    4 5 6 7   8 9 A B    C D E F  0
	@ what is in r4? 68
	@sp = 0x07bffe07C
	
	mov	r4, #92
	push	{r4}
	@sp = 0x07bffe078	
	mov	r4, #87
	@ what is the value in r4 right here?
	pop	{r4}
	@ what is the value in r4 right here?
	
	pop	{r4}
	@ what is the value in r4 right here? 922
	bx	lr


	
