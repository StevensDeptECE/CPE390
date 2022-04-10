	.arch armv8-a
	.file	"arrayexample.cc"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z5sumitPmj
	.type	_Z5sumitPmj, %function
_Z5sumitPmj:
.LFB0:
	.cfi_startproc
	mov	x4, x0
	cbz	w1, .L4
	mov	x2, 0 // i=0
	mov	x0, 0
	.p2align 3,,7
	//for (int i = 0; i < n; i++)
	// sum += a[i];
.L3:
	// x4 = a
	ldr	x3, [x4, x2, lsl 3] // x3 = read(x4 + x2*8)
	add	x2, x2, 1 	//i++
	add	x0, x0, x3 // sum = sum + a[i]
	cmp	w1, w2     // while w2 < w1
	bhi	.L3
	ret
	.p2align 2,,3
.L4:
	mov	x0, 0
	ret
	.cfi_endproc
.LFE0:
	.size	_Z5sumitPmj, .-_Z5sumitPmj
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits

	lsl    x9, x9, #3 // x9 = x9 * 8
	lsl    x10, x10, #5 // *32    xxxxxxxx00000
