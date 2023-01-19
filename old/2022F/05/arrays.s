	.file	"arrays.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2384:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z3sumPyy
	.def	_Z3sumPyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3sumPyy
_Z3sumPyy:
.LFB1859:
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L6
	leaq	(%rcx,%rdx,8), %rdx  # x marks the spot
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L5:
	addq	(%rcx), %rax
	addq	$8, %rcx
	cmpq	%rdx, %rcx
	jne	.L5
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z3sumPyy;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z3sumPyy
_GLOBAL__sub_I__Z3sumPyy:
.LFB2385:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z3sumPyy
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
