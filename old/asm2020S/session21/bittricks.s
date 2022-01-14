@http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.kui0100a/armasm_cihjgdid.htm
reversebits:
	@rbit : reverse bits
	@x0000000000000000000000000000000
	mov r2, #0
	mov  r1, r0, lsr, #31
	orr r2, r1
	mov r1, r0, lsr #30
	and r1, #1
	orr r2, r1
