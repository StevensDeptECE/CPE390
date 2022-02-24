	.globl main
main:
	//push	{lr}
	bl	myfunc // LR = PC   PC=myfunc
	// come back to here
	//pop	{lr}


	ret // get out


myfunc:
//	add	x0, x3, x5 // x0 = x3 + x5   register-register mode
//	add	x0, x5, 9  // x0 = x5 + 9    immediate mode
	
	mov	w1, 1
loop:	
	add	w1, w1, 1 // w1 = w1+1
	cmp	w1, 100
	ble	loop        // <=
	ret // PC=LR
	
