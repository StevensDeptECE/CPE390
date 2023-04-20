    .globl _Z6dovabsd
_Z6dovabsd:
    andpd	.mask(%rip), %xmm0
	ret

.mask:
	.long	0xFFFFFFFF
	.long	0x7FFFFFFF
	.long	0xFFFFFFFF
	.long	0xFFFFFFFF
