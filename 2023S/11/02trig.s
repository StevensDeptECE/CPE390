	.file	"02trig.cc"
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3153:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4
	.globl	_Z2f1d
	.def	_Z2f1d;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f1d
_Z2f1d:
.LFB2470:
	.seh_endprologue
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L11
	sqrtsd	%xmm0, %xmm0
	ret
.L11:
	jmp	sqrt
	.seh_endproc
	.p2align 4
	.globl	_Z2f2d
	.def	_Z2f2d;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f2d
_Z2f2d:
.LFB2471:
	.seh_endprologue
	jmp	sin
	.seh_endproc
	.p2align 4
	.globl	_Z2f3d
	.def	_Z2f3d;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f3d
_Z2f3d:
.LFB2472:
	.seh_endprologue
	jmp	cos
	.seh_endproc
	.p2align 4
	.globl	_Z2f4d
	.def	_Z2f4d;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z2f4d
_Z2f4d:
.LFB2473:
	.seh_endprologue
	jmp	tan
	.seh_endproc
	.p2align 4
	.globl	_Z3absddd
	.def	_Z3absddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3absddd
_Z3absddd:
.LFB2474:
	.seh_endprologue
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	addsd	%xmm2, %xmm0   # xmm0 = x*x + y*y + z*z
	ucomisd	%xmm0, %xmm1
	ja	.L23
	sqrtsd	%xmm0, %xmm0
	ret
.L23:
	jmp	sqrt
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2475:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt3cin(%rip), %rcx
	leaq	40(%rsp), %rdx
	call	_ZNSi10_M_extractIdEERSiRT_
	movsd	40(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L31
	sqrtsd	%xmm1, %xmm1
.L27:
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$10, 39(%rsp)
	movq	%rax, %rcx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rcx,%rax)
	je	.L28
	leaq	39(%rsp), %rdx
	movl	$1, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L29:
	xorl	%eax, %eax
	addq	$56, %rsp
	ret
.L28:
	movl	$10, %edx
	call	_ZNSo3putEc
	jmp	.L29
.L31:
	movapd	%xmm1, %xmm0
	call	sqrt
	movapd	%xmm0, %xmm1
	jmp	.L27
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I__Z2f1d;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z2f1d
_GLOBAL__sub_I__Z2f1d:
.LFB3154:
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
	.quad	_GLOBAL__sub_I__Z2f1d
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	tan;	.scl	2;	.type	32;	.endef
	.def	_ZNSi10_M_extractIdEERSiRT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
