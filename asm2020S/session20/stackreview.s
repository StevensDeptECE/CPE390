	.global f
f:
	@sp=0x712f81c0
	push	{r4,r5} @ subtract 8 from stack
	@sp = 0x712f81b8 
	@r4 = sp  r5 = sp+4
	

	push	{r4}
	@sp = 0x712f81b4


	pop	{r4}
	@sp = 0x712f81b8

	pop	{r4,r5}
	@sp = 0x712f81c0
