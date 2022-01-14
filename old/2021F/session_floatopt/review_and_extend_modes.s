main:
	mov	r0, #1	//immediate mode
	mov	r0, r1	// register-to-register register-transfer

	// math on ARM is only register-to-register
	// ARM is a load/store architecture


	add	r0, r1, r2  // register mode
	add	r0, r1, #23 // immediate mode

	ldr	r0, [r1]	// r0 = load 4 bytes from memory r1 points to    (indexed mode)
	ldr	r2, [r1, #4]	// r0 = load 4 bytes from memory [r1  + 4] r2=0010C2D8 (indexed offset mode)
	ldr	r3, [r1, #-4]	// r0 = load 4 bytes from memory [r1  + 4] r3=FF2E0209	
	ldr	r0, [r1], #4    // r0 = load 4 bytes from [r1] then r1 = r1 + 4   (autoincrement mode)
	// int a = x[i++];

	ldr	r0, [r1]
	add	r1, #4
	

	
	/*
	r1 = 00080
0007C: FF2E0209
00080: 00002030
00084: 0010C2D8
00088: 9C0081A9
	*/

	//r0 = array r1 = number of elements
f:
	mov	r2, #0
1:	
	ldr	r3, [r0]
	add	r2, r3   // sum = sum + array[i]
	add	r0, #4

	subs	r1, #1
	bne	1b

	/*
	class A {
	  int a,b,c		;
	*/
	//assume r0 is pointing at an object of type A
	ldr	r2, [r0] // load value a from the object
	ldr	r3, [r0, #4] // load value b from the object
	ldr	r4, [r0, #8] // load value c from the object
