	// r0 = pointer to array
	// r1 = length of array
	// return sum of the elements in the array
	.global _Z3sumPii
_Z3sumPii:
	mov r2, _____ // int sum = 0
1:
	____ r3, [r0] // read in each element of the array
	add  r0, ____ // advance to next element of the array
	____ r1, #1   // count down
	____ 1b       // keep going until all elements are processed
	mov  ___, r2  // put the result in the right spot
	bx   lr

	// r0 = pointer to array
	// r1 = length of array
	// return the biggest element of the arry
	.global _Z3maxPii
_Z3maxPii:
	____ r2, ____ // put the first element of the array into r2
	add  r0, ____ // advance to 2nd element of the array
1:
	____ r3, [r0] // read in each element of the array
	add  r0, ____ // advance to next element of the array
	____ r3, r2   // determine if the new element is bigger
	____ r2, r3   // if it is, copy the number into r2 so r2 is the biggest
	____ r1, #1   // count down
	____ 1b       // keep going until all elements are processed
	mov  ___, r2  // put the result in the right spot
	bx   lr

	// r0 = pointer to array of characters
	// r1 = length of array
	// add 1 to each letter
	.global _Z5cryptPci
_Z5cryptPci:
1:	
	ldrb	r2, _____ // load each letter
	____    r2, _____ // add 1 to it
	____    r2, _____ // write it back to the array
	add     r0, _____ // advance to next letter
	____    r1, #1    // count down until we are done
	____    1b        // loop until it's over
	bx	lr        // nothing to return, the array is changed
