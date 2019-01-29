	.file	"callingconventions.cc"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB1975:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_Z12testintegersv
	.def	_Z12testintegersv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12testintegersv
_Z12testintegersv:
.LFB1528:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	_Z3f01v
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %ecx
	call	_Z3f02i
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	leaq	46(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 46(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$2, %edx
	movl	$1, %ecx
	call	_Z3f03ii
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	leaq	45(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 45(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9testuintsv
	.def	_Z9testuintsv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9testuintsv
_Z9testuintsv:
.LFB1529:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	$1, %ecx
	call	_Z3f11j
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSo9_M_insertImEERSoT_
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$1, %edx
	movl	$1, %ecx
	call	_Z3f12jj
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSo9_M_insertImEERSoT_
	leaq	46(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 46(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$2, %ecx
	call	_Z3f13y
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rax, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	45(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 45(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$2, %edx
	movl	$2, %ecx
	call	_Z3f14yy
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	%rax, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	44(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 44(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$56, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z9testfloatv
	.def	_Z9testfloatv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9testfloatv
_Z9testfloatv:
.LFB1530:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movss	.LC0(%rip), %xmm0
	call	_Z3f21f
	pxor	%xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	48(%rsp), %rbx
	cvtss2sd	%xmm0, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	79(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 79(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	.LC1(%rip), %xmm0
	call	_Z3f22d
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm0, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	leaq	78(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 78(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	fld1
	leaq	32(%rsp), %rdx
	movq	%rbx, %rcx
	fstpt	32(%rsp)
	call	_Z3f23e
	movq	%rbx, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIeEERSoT_
	leaq	77(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 77(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$80, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4,,15
	.globl	_Z11testMethodsv
	.def	_Z11testMethodsv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11testMethodsv
_Z11testMethodsv:
.LFB1531:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	$3, %edx
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	call	_ZN1AC1Ei
	movq	%rbx, %rcx
	call	_ZNK1A3f31Ev
	movq	%rbx, %rcx
	call	_ZN1A4f31bEv
	movq	%rbx, %rcx
	movl	$3, %edx
	call	_ZN1A3f32Ei
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	leaq	45(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 45(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$3, %ecx
	call	_Z3f33i
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	leaq	46(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 46(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	call	_ZN1A3f34Ev
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	leaq	47(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	movb	$10, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1532:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	call	_Z12testintegersv
	call	_Z9testuintsv
	call	_Z9testfloatv
	call	_Z11testMethodsv
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I__Z12testintegersv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z12testintegersv
_GLOBAL__sub_I__Z12testintegersv:
.LFB1976:
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
	.quad	_GLOBAL__sub_I__Z12testintegersv
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1069547520
	.align 8
.LC1:
	.long	0
	.long	1074003968
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Z3f01v;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_Z3f02i;	.scl	2;	.type	32;	.endef
	.def	_Z3f03ii;	.scl	2;	.type	32;	.endef
	.def	_Z3f11j;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Z3f12jj;	.scl	2;	.type	32;	.endef
	.def	_Z3f13y;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Z3f14yy;	.scl	2;	.type	32;	.endef
	.def	_Z3f21f;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_Z3f22d;	.scl	2;	.type	32;	.endef
	.def	_Z3f23e;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIeEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZN1AC1Ei;	.scl	2;	.type	32;	.endef
	.def	_ZNK1A3f31Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN1A4f31bEv;	.scl	2;	.type	32;	.endef
	.def	_ZN1A3f32Ei;	.scl	2;	.type	32;	.endef
	.def	_Z3f33i;	.scl	2;	.type	32;	.endef
	.def	_ZN1A3f34Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
