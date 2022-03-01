/*
1. 
	write a function that takes x0=array w1 = len
	add 1 to each element in the array

	*/
	.global	_Z6addonePKii
	//x0=array  w1 = len
_Z6addonePKii:	
	ldr  w3, [x0] // load memory into w3


	sub w1, w1, 1
	
	
	
	/*
take home quiz....
2. 
	write a function that takes x0=array1 x1 array2 w2 = len
	compute the dot product:
	example x0 = [1, 2, 3]
	x1 = [3,4,5]
	1*3+2*4+3*5

	return 26


	*/

/*
3. 
	write a function that takes x0=array w1 = len
	return sum of cubes
	x0=[3,4,5]
	return 3*3*3+4*4*4+5*5*5 = 27+64+125
*/
