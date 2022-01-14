	.global _Z13playwithstackv
_Z13playwithstackv:
	push	{r4}
	mov 	r4, #5
	pop 	{r4}
	bx	lr
