	.global _f
_f:
	
	LDR	R0, #1
.L1:
	ADD	R0, #1
	CMP	R0, #10
	BLT	.L1
	BX 	LR
