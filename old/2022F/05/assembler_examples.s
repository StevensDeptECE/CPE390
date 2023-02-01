	.file	"assembler_examples.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2387:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z3addyy
	.def	_Z3addyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3addyy
_Z3addyy:
.LFB1859:
	.seh_endprologue
	leaq	(%rcx,%rdx), %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3subyy
	.def	_Z3subyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3subyy
_Z3subyy:
.LFB1860:
	.seh_endprologue
	movq	%rcx, %rax
	subq	%rdx, %rax // rax = rcx - rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z4prodyy
	.def	_Z4prodyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4prodyy
_Z4prodyy:
.LFB1861:
	.seh_endprologue
	movl	$1, %eax // p=1
	cmpq	%rcx, %rdx // if rcx > rdx
	jb	.L5
	.p2align 4,,10
	.p2align 3
.L7:
	imulq	%rcx, %rax // 1*2
	addq	$1, %rcx   // 2+1 = 3
	cmpq	%rcx, %rdx
	jnb	.L7
.L5:
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z3maxyy
	.def	_Z3maxyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3maxyy
_Z3maxyy:
.LFB1862:
	.seh_endprologue
	cmpq	%rdx, %rcx
	movq	%rdx, %rax
	cmovnb	%rcx, %rax
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z3addyy;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z3addyy
_GLOBAL__sub_I__Z3addyy:
.LFB2388:
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
	.quad	_GLOBAL__sub_I__Z3addyy
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
