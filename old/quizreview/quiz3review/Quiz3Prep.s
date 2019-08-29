	@1. Examine the following code and determine what is in the registers
	@	at the end

	.global _Z1fi @ called from C++ f(4)
_Z1fi:
	push {r1,r2}
	ldr	r1, #3
	add	r0, r0, r1
	lsl	r0
	ldr	r2, #64
	orr	r0, r0, r2

	@right here
	@ r0 =
	@ r1 =
	@ r2 =
	pop {r1,r2}
	bx lr		@function returns r0


	@2. Examine the following code and determine what is returned in R0
	@ assume R0 is pointing at the array shown in c++ main
	.global _Z1gPi
_Z1gPi:
	push {r1,r2,r3}
	ldr r1, [R0]
	ldr r2, [R0,#4]
	sub r3,r1,r2
	ldr r1, [R0,#8]
	ldr r2	[R0,#12]
	sub r1,r1,r2
	add r0, r3, r1
	pop {r1,r2,r3}
	bx lr
/*
	here is the C++ code that would call the above
	int main() {
	  int x[] = {5, 4, 3, 2} ;
	  cout << g(x);
	}
	*/


	@3. Write a machine language sequence of ARM instructions
	@ to count from 1 to 10 stepping by 2 (1,3,5,7,9)
	@ you do not have to worry about being called from C++, just
	@ consider this in isolation
	
	ldr	r0, #1
.loop:	
	add	r0, #2
	cmp	r0, #10
	blt	.loop


	@4. Write a machine language sequence of ARM instructions
	@ to count from 10 down to 0 (including zero!)
	@ you do not have to worry about being called from C++, just
	@ consider this in isolation

	ldr	r0, #10
.loop:
	sub	r0, #1
	bge	.loop

	@The loop in (4) can be made shorter then (3). Why?

	@ counting down can automatically compare to zero so no CMP instruction
	@ is needed.

	
