main:
	push	{r4,lr}
	bl	f @lr = where to return to
here:	

	pop	{r4,pc}

f:
	push	{r9, lr}
	
	bl	g
	bl	h	
	bl	g
	pop	{r9, pc}


g:
	bx lr

h:	
	bx lr
