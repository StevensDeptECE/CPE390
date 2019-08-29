	.globl	_Z33n1
_Z33n1:
	PUSH	{R1}
.loop:
	AND	R1, R0,#1
	BZ	.even
.odd:
	MUL	R0, #3
	ADD	R0, #1
	CMP	R1, #1
	BGT	.loop
	BX	LR
.even:
	LSR	R0, #1
	CMP	R1, #1
	BGT	.loop
	BX	LR

