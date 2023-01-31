	.file	"01functions.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2388:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z2f1yy
	.def	_Z2f1yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f1yy
_Z2f1yy:
.LFB1859:
	.seh_endprologue
	#  ax bx cx dx eax ebx ecx edx rax rbx rcx rdx
	leaq	(%rcx,%rdx), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f2yy
	.def	_Z2f2yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f2yy
_Z2f2yy:
.LFB1860:
	.seh_endprologue
	movq	%rcx, %rax   # %rax = %rcx
	subq	%rdx, %rax   # %rax = %rax - %rdx   %rax = %rcx-%rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f3yy
	.def	_Z2f3yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f3yy
_Z2f3yy:
.LFB1861:
	.seh_endprologue
	movq	%rcx, %rax
	imulq	%rdx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f4yy
	.def	_Z2f4yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f4yy
_Z2f4yy:
.LFB1862:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z2f5yy
	.def	_Z2f5yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f5yy
_Z2f5yy:
.LFB1863:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %rax
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z2f1yy;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z2f1yy
_GLOBAL__sub_I__Z2f1yy:
.LFB2389:
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
	.quad	_GLOBAL__sub_I__Z2f1yy
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
