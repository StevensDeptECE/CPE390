	@for each sequence of code, your job is to create a question in a Canvas quiz
	@ that shows the code and asks how to make it faster.


	@ 101=5   5*2=10      1010 = 10
	@ in decimal: 123 * 10  1230
	mul r0, #2	@lsl r0, #1

	mul r0, #16     @lsl r0, #4

	mul r0, #128	@lsl r0, #7

	mov r1, #32
	bl  __myuglydividefunction @lsr r0, #5


	sub r0, #1
	cmp r0, #0		@subs r0, #1

	bne .L1


	@in this problem, r0 and r1 come in and can be any number
	@you optimize the code to make it faster
	sub r0,r0
	mul r1,#2		@lsl r1, #1
	add r1,r0		


	
	
