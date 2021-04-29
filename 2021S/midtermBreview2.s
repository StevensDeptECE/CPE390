	.global _Z5pairsPii
	@r0 = array
	@r1 = length
_Z5pairsPii:	

	push	{r4-r5} @ideally, pairs of registers (even number)
	mov	r2, #0
1:	
	ldr   r3, [r0]      @ load each element of array
	ldr   r4, [r0, #4]  @ load 2nd element of pair
	add   r0, #8        @ advance to the next pair of 4 byte numbers
	mul   r5, r3, r4  @r5 = r3*r4
	add   r4, r3, r4  @r4 = r3+r4
	mul   r3, r4, r5  @r4 = (a[i]*a[i+1])*(a[i]+a[i+1])
	add   r2, r3      @sum it up into r8
	subs  r1, #2
	bne   1b
	mov   r0, r2
	pop   {r4-r5}
	bx    lr

