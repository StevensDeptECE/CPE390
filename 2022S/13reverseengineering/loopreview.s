	// add the elements of an array of uint32_t
	// x0 = array
	// x1 = len
sum:
	mov  x3, #0 // sum = 0
1:
	ldr  ____, _____, #4 // read in and advance by 4 bytes
	add  x3, x3, _____
	___  x1, x1, #1
	bgt  ____
	mov  ____, x3
	ret

	// add the elements of an array of 32-bit integers
	// x0 = array
	// x1 = len
sumsq:
	mov  x3, #0 // sum = 0
	mov  x4, #0 // i = 0
1:
	ldr  ___, [_____________] //read in array element
	mul  x2, x2, ____
	add  x3, x3, _____
	___  x4, x4, #1
	cmp  x4, ____
	___  1b
	mov  ____, x3
	ret



// write a function that replaces every element of the array by 2* the value
	// do not use multiply for speed
	//x0 = pointer to array of uint64_t
	//x1 = length of the array

doubleme:
	add x3, x3, x3 // multiple x3 by 2...
	lsl x3, x3, #1 // ditto

// write a function that replaces every element of the array by 5* the value
	// do not use multiply for speed
	//x0 = pointer to array of uint64_t
	//x1 = length of the array

fiveme:

	add  x4, x3, x3 lsl #2 // x4 = x3 + 4*x3 = 5*x3 (x3 does not change)

	

	// add only the even numbers in the array starting at x0 with length x1
	// example: arr[] = {2, 3, 9, 1, 6, 5, 7, 8}
	// sumeven(arr, 8) should return 2+6+8=16
sumeven:

	tst x3, #1
	addeq  x2, x2, x3
	
