	.arch armv8-a
	.file	"02loops.cc"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z1fv
	.type	_Z1fv, %function
_Z1fv:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w19, 1
	.p2align 3,,7
.L2:
	mov	w0, w19
	add	w19, w19, 1
	bl	_Z1gi
	cmp	w19, 101
	bne	.L2
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	_Z1fv, .-_Z1fv
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
