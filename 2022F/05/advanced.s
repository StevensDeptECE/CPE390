	.file	"advanced.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3136:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z1fd
	.def	_Z1fd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z1fd
_Z1fd:
.LFB2460:
	.seh_endprologue
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10polar2rectdd
	.def	_Z10polar2rectdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10polar2rectdd
_Z10polar2rectdd:
.LFB2461:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movups	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm0
	leaq	40(%rsp), %rdx
	movq	%rcx, %rbx
	leaq	32(%rsp), %r8
	call	sincos
	movupd	32(%rsp), %xmm0
	movapd	%xmm6, %xmm1
	movq	%rbx, %rax
	unpcklpd	%xmm1, %xmm1
	mulpd	%xmm0, %xmm1
	movups	%xmm1, (%rbx)
	movups	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I__Z1fd;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z1fd
_GLOBAL__sub_I__Z1fd:
.LFB3137:
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
	.quad	_GLOBAL__sub_I__Z1fd
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev1, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sincos;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
