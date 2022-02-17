	.arch armv8-a
	.file	"test.cc"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z1fii
	.type	_Z1fii, %function
_Z1fii:
.LFB1592:
	.cfi_startproc
	add	w0, w1, w0 // w0 = w1 + w0
	ret
	.cfi_endproc
.LFE1592:
	.size	_Z1fii, .-_Z1fii
	.align	2
	.p2align 4,,11
	.global	_Z1gmm
	.type	_Z1gmm, %function
_Z1gmm:
.LFB1593:
	.cfi_startproc
	add	x0, x0, x1
	ret
	.cfi_endproc
.LFE1593:
	.size	_Z1gmm, .-_Z1gmm
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB1594:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	w1, 3
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, :got:_ZSt4cout
	ldr	x19, [x19, #:got_lo12:_ZSt4cout]
	mov	x0, x19
	bl	_ZNSolsEi
	mov	x1, 166
	mov	x0, x19
	movk	x1, 0x7c1c, lsl 16
	movk	x1, 0xb79c, lsl 32
	movk	x1, 0xde0, lsl 48
	bl	_ZNSo9_M_insertImEERSoT_
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1594:
	.size	main, .-main
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z1fii, %function
_GLOBAL__sub_I__Z1fii:
.LFB2088:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR0
	add	x19, x19, :lo12:.LANCHOR0
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	mov	x1, x19
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x19, [sp, 16]
	adrp	x2, __dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	add	x2, x2, :lo12:__dso_handle
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	b	__cxa_atexit
	.cfi_endproc
.LFE2088:
	.size	_GLOBAL__sub_I__Z1fii, .-_GLOBAL__sub_I__Z1fii
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z1fii
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	__dso_handle
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
