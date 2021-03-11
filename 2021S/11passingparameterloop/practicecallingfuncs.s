	.global main
main:
	push	{lr}
	bl	f
	pop	{pc}
f:
	push	{lr}
	bl	g
	pop	{pc}	@return
g:
	push	{lr}
	bl	h
	pop	{pc}	@return
h:
	bx	lr
