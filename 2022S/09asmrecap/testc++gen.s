	.file	"testc++gen.cc"
	.text
	.p2align 4
	.globl	_Z1fj
	.type	_Z1fj, @function
_Z1fj:
.LFB256:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE256:
	.size	_Z1fj, .-_Z1fj
	.p2align 4
	.globl	_Z1gi
	.type	_Z1gi, @function
_Z1gi:
.LFB257:
	.cfi_startproc
	endbr64
	movslq	%edi, %rax
	ret
	.cfi_endproc
.LFE257:
	.size	_Z1gi, .-_Z1gi
	.p2align 4
	.globl	_Z6mysqrtd
	.type	_Z6mysqrtd, @function
_Z6mysqrtd:
.LFB258:
	.cfi_startproc
	endbr64
	pxor	%xmm2, %xmm2
	movapd	%xmm0, %xmm1
	ucomisd	%xmm0, %xmm2
	sqrtsd	%xmm1, %xmm1
	ja	.L10
	movapd	%xmm1, %xmm0
	ret
.L10:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm1, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm1
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE258:
	.size	_Z6mysqrtd, .-_Z6mysqrtd
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
