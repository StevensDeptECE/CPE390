/*
	sumsquares(a, b)    a*a + (a+1)*(a+1) + ... b*b
	

	*/

_Z10sumsquaresii:



	bx	lr

/*
	int a[] = {1, 2, 7}
	sum(a, 3)
	
    r0= array
    r1 = length
*/



/*
	int a[] = {1, 2, 7}
	int b[] = {3, 9, 7}
	dot(a, b, 3)
	    r0 r1 r2
*/


/*
	int a[] = {1, 2, 7}
	doubleit(a, 3)
	        r0  r1
*/

	//load each element for arrays of 4 byte integers
	//double it
	// store back

	ldr	r2, [r0]
	add	r0, #4

	ldr	r2, [r0], #4
	
	/*
	  sum(const char a[], int len)

	*/


	ldrb	r2, [r0]
	add	r0, #1


/*
	later (after midterm)
	for arrays of double precision
	vldr.f64 d0, [r0]
	add	r0, #8
	*/
