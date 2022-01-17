	.file	"all_instructions.cc"
	.text
	.p2align 4
	.globl	_Z3f1aii
	.type	_Z3f1aii, @function
_Z3f1aii:
.LFB1819:
	.cfi_startproc
	endbr64
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE1819:
	.size	_Z3f1aii, .-_Z3f1aii
	.p2align 4
	.globl	_Z3f1bii
	.type	_Z3f1bii, @function
_Z3f1bii:
.LFB1820:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	subl	%esi, %eax
	ret
	.cfi_endproc
.LFE1820:
	.size	_Z3f1bii, .-_Z3f1bii
	.p2align 4
	.globl	_Z3f1cii
	.type	_Z3f1cii, @function
_Z3f1cii:
.LFB1821:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	imull	%esi, %eax
	ret
	.cfi_endproc
.LFE1821:
	.size	_Z3f1cii, .-_Z3f1cii
	.p2align 4
	.globl	_Z3f1dii
	.type	_Z3f1dii, @function
_Z3f1dii:
.LFB1822:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cltd
	idivl	%esi
	ret
	.cfi_endproc
.LFE1822:
	.size	_Z3f1dii, .-_Z3f1dii
	.p2align 4
	.globl	_Z3f1eii
	.type	_Z3f1eii, @function
_Z3f1eii:
.LFB2331:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	cltd
	idivl	%esi
	ret
	.cfi_endproc
.LFE2331:
	.size	_Z3f1eii, .-_Z3f1eii
	.p2align 4
	.globl	_Z3f1fi
	.type	_Z3f1fi, @function
_Z3f1fi:
.LFB1824:
	.cfi_startproc
	endbr64
	movl	%edi, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE1824:
	.size	_Z3f1fi, .-_Z3f1fi
	.p2align 4
	.globl	_Z3f2amm
	.type	_Z3f2amm, @function
_Z3f2amm:
.LFB1825:
	.cfi_startproc
	endbr64
	leaq	(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE1825:
	.size	_Z3f2amm, .-_Z3f2amm
	.p2align 4
	.globl	_Z3f2bmm
	.type	_Z3f2bmm, @function
_Z3f2bmm:
.LFB1826:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	subq	%rsi, %rax
	ret
	.cfi_endproc
.LFE1826:
	.size	_Z3f2bmm, .-_Z3f2bmm
	.p2align 4
	.globl	_Z3f2cmm
	.type	_Z3f2cmm, @function
_Z3f2cmm:
.LFB1827:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	imulq	%rsi, %rax
	ret
	.cfi_endproc
.LFE1827:
	.size	_Z3f2cmm, .-_Z3f2cmm
	.p2align 4
	.globl	_Z3f2dmm
	.type	_Z3f2dmm, @function
_Z3f2dmm:
.LFB1828:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rsi
	ret
	.cfi_endproc
.LFE1828:
	.size	_Z3f2dmm, .-_Z3f2dmm
	.p2align 4
	.globl	_Z3f2emm
	.type	_Z3f2emm, @function
_Z3f2emm:
.LFB2333:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rsi
	ret
	.cfi_endproc
.LFE2333:
	.size	_Z3f2emm, .-_Z3f2emm
	.p2align 4
	.globl	_Z3f2fm
	.type	_Z3f2fm, @function
_Z3f2fm:
.LFB1830:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	negq	%rax
	ret
	.cfi_endproc
.LFE1830:
	.size	_Z3f2fm, .-_Z3f2fm
	.p2align 4
	.globl	_Z3f3add
	.type	_Z3f3add, @function
_Z3f3add:
.LFB1831:
	.cfi_startproc
	endbr64
	addsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE1831:
	.size	_Z3f3add, .-_Z3f3add
	.p2align 4
	.globl	_Z3f3bdd
	.type	_Z3f3bdd, @function
_Z3f3bdd:
.LFB1832:
	.cfi_startproc
	endbr64
	subsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE1832:
	.size	_Z3f3bdd, .-_Z3f3bdd
	.p2align 4
	.globl	_Z3f3cdd
	.type	_Z3f3cdd, @function
_Z3f3cdd:
.LFB1833:
	.cfi_startproc
	endbr64
	mulsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE1833:
	.size	_Z3f3cdd, .-_Z3f3cdd
	.p2align 4
	.globl	_Z3f3ddd
	.type	_Z3f3ddd, @function
_Z3f3ddd:
.LFB1834:
	.cfi_startproc
	endbr64
	divsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE1834:
	.size	_Z3f3ddd, .-_Z3f3ddd
	.p2align 4
	.globl	_Z3f3edd
	.type	_Z3f3edd, @function
_Z3f3edd:
.LFB2335:
	.cfi_startproc
	endbr64
	divsd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE2335:
	.size	_Z3f3edd, .-_Z3f3edd
	.p2align 4
	.globl	_Z3f3fd
	.type	_Z3f3fd, @function
_Z3f3fd:
.LFB1836:
	.cfi_startproc
	endbr64
	xorpd	.LC0(%rip), %xmm0
	ret
	.cfi_endproc
.LFE1836:
	.size	_Z3f3fd, .-_Z3f3fd
	.p2align 4
	.globl	_Z3f3gd
	.type	_Z3f3gd, @function
_Z3f3gd:
.LFB1837:
	.cfi_startproc
	endbr64
	pxor	%xmm2, %xmm2
	movapd	%xmm0, %xmm1
	ucomisd	%xmm0, %xmm2
	sqrtsd	%xmm1, %xmm1
	ja	.L26
	movapd	%xmm1, %xmm0
	ret
.L26:
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
.LFE1837:
	.size	_Z3f3gd, .-_Z3f3gd
	.p2align 4
	.globl	_Z3f3hd
	.type	_Z3f3hd, @function
_Z3f3hd:
.LFB1838:
	.cfi_startproc
	endbr64
	jmp	sin@PLT
	.cfi_endproc
.LFE1838:
	.size	_Z3f3hd, .-_Z3f3hd
	.p2align 4
	.globl	_Z3f3id
	.type	_Z3f3id, @function
_Z3f3id:
.LFB1839:
	.cfi_startproc
	endbr64
	jmp	cos@PLT
	.cfi_endproc
.LFE1839:
	.size	_Z3f3id, .-_Z3f3id
	.p2align 4
	.globl	_Z3f3jdd
	.type	_Z3f3jdd, @function
_Z3f3jdd:
.LFB1840:
	.cfi_startproc
	endbr64
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	sqrtsd	%xmm2, %xmm2
	ja	.L35
	movapd	%xmm2, %xmm0
	ret
.L35:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm2, 8(%rsp)
	call	sqrt@PLT
	movsd	8(%rsp), %xmm2
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	movapd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE1840:
	.size	_Z3f3jdd, .-_Z3f3jdd
	.p2align 4
	.globl	_Z3f3kdd
	.type	_Z3f3kdd, @function
_Z3f3kdd:
.LFB1841:
	.cfi_startproc
	endbr64
	jmp	pow@PLT
	.cfi_endproc
.LFE1841:
	.size	_Z3f3kdd, .-_Z3f3kdd
	.p2align 4
	.globl	_Z3f3md
	.type	_Z3f3md, @function
_Z3f3md:
.LFB1842:
	.cfi_startproc
	endbr64
	jmp	exp@PLT
	.cfi_endproc
.LFE1842:
	.size	_Z3f3md, .-_Z3f3md
	.p2align 4
	.globl	_Z3f3nd
	.type	_Z3f3nd, @function
_Z3f3nd:
.LFB1843:
	.cfi_startproc
	endbr64
	jmp	log@PLT
	.cfi_endproc
.LFE1843:
	.size	_Z3f3nd, .-_Z3f3nd
	.p2align 4
	.globl	_Z13convertToInt1d
	.type	_Z13convertToInt1d, @function
_Z13convertToInt1d:
.LFB1844:
	.cfi_startproc
	endbr64
	cvttsd2sil	%xmm0, %eax
	ret
	.cfi_endproc
.LFE1844:
	.size	_Z13convertToInt1d, .-_Z13convertToInt1d
	.p2align 4
	.globl	_Z13convertToInt2d
	.type	_Z13convertToInt2d, @function
_Z13convertToInt2d:
.LFB1845:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	round@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	cvttsd2sil	%xmm0, %eax
	ret
	.cfi_endproc
.LFE1845:
	.size	_Z13convertToInt2d, .-_Z13convertToInt2d
	.p2align 4
	.globl	_Z13convertToInt3d
	.type	_Z13convertToInt3d, @function
_Z13convertToInt3d:
.LFB1846:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	round@PLT
	movsd	.LC2(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jnb	.L43
	cvttsd2siq	%xmm0, %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	subsd	%xmm1, %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	ret
	.cfi_endproc
.LFE1846:
	.size	_Z13convertToInt3d, .-_Z13convertToInt3d
	.p2align 4
	.globl	_Z16convertToDouble1i
	.type	_Z16convertToDouble1i, @function
_Z16convertToDouble1i:
.LFB1847:
	.cfi_startproc
	endbr64
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	addsd	.LC3(%rip), %xmm0
	ret
	.cfi_endproc
.LFE1847:
	.size	_Z16convertToDouble1i, .-_Z16convertToDouble1i
	.p2align 4
	.globl	_Z16convertToDouble2i
	.type	_Z16convertToDouble2i, @function
_Z16convertToDouble2i:
.LFB1848:
	.cfi_startproc
	endbr64
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	ret
	.cfi_endproc
.LFE1848:
	.size	_Z16convertToDouble2i, .-_Z16convertToDouble2i
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z3f1aii, @function
_GLOBAL__sub_I__Z3f1aii:
.LFB2329:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2329:
	.size	_GLOBAL__sub_I__Z3f1aii, .-_GLOBAL__sub_I__Z3f1aii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z3f1aii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1138753536
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.hidden	__dso_handle
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
