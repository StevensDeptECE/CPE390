	.global main
main:	
	mov	r0, #255     @immediate mode (The number is INSIDE the instruction)
	mov	r0, r1	     @register to register

	ldr	r1, =121252151  @pseudo instruction, turns into pc relative indexed offset
	ldr	r0, [r1]     @ r1 is the location in memory     (indexed)
	ldr	r0, [r1, #4]					(index/offset)
	ldr	r0, [r1, #8]
	ldr	r0, [r1, #1001	]    @[r1 + 1001]  ideally read from a memory-aligned location
	ldr	r0, [r1], #4	@r0 = mem[r1]  then r1 = r1 + 4   like:  x[i++]	 (postincrement)
	ldr	r0, [r1, #4]!   @r1 = r1 + 4    r0 = mem[r1]    (preincremeent)
        @ cout << x[i]		;   i= i + 1;


	@one instruction is equivalent 
	ldr	r0, [r1], #4

	@equivalent to
	ldr	r0, [r1]
	add	r1, #4

	ldr	r0, [r1, #4]!   @r1 = r1 + 4    r0 = mem[r1]    (preincremeent)
	@equivalent to:
	add	r1, #4
	ldr	r0, [r1]


	push	{r4}
	@push is a pseudo instruction. It really is...
	str	r4, [sp, #-4]!      @ first subtract 4 from the stack, then write it
	push	{r4-r8}  @ this might turn into something else for bulk writing, not sure
	
	pop	{r4}
	@pop is a pseudo instruction. It really is....
	ldr	r4, [sp], #4	
	
@		@     0 1 2 3 4 5 6 7
@sp-->	7FFF8c98@     00ff2041A2B6DC28
@sp-->	7fff8c90@
@	7fff8c88@
@		@
@		@
