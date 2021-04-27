	.global main
	@ ARM fast binary convention
	@ f(int a)    r0=a
	@ f(int a, int b)   r0=a  r1 = b
	@ integer return value r0
	@ the function is free to mess up r0..r3 (scratch registers)

main:
	push	{r4}   @sp=sp-4 copy r4 --> [sp]   (to memory)
	@ r4=_____

	mov	r4, #99

	pop	{r4}
	bx	lr


	
