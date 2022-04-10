	cmp x0, x1
	beq l1

	add x2, x1, x5, lsl #4
	br  x2

	ldp ...
	bl  f
	stp ...
	
	ret

l1:


f:

	ret

	cmp x0, #1
	beq  b1
	cmp x0, #2
	beq  b2
	cmp x0, #3
	beq  b3
	cmp x0, #4
	beq  b4

	
	adrp x1, b1
	add  x1, x1, x0, lsl, #3
	b    x1

b1:
	add x2, x3, x4
	b   end
	
b2:
	sub x3, x4, x5
	b   end
b3:
	mul x3, x4, x5
	b   end

b4:
	
b5:
	
b6:
end:	
