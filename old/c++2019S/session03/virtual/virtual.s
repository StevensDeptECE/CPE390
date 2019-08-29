	.file	"virtual.cc"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB1979:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "I'm a C!\12\0"
	.section	.text$_ZN1C1fEv,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN1C1fEv
	.def	_ZN1C1fEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN1C1fEv
_ZN1C1fEv:
.LFB1529:
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	movl	$9, %r8d
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "I'm a B!\12\0"
	.section	.text$_ZN1B1fEv,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN1B1fEv
	.def	_ZN1B1fEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN1B1fEv
_ZN1B1fEv:
.LFB1528:
	.seh_endprologue
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$9, %r8d
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1530:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	16+_ZTV1B(%rip), %rax
	movq	%rax, 32(%rsp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	16+_ZTV1C(%rip), %rax
	leaq	32(%rsp), %rcx
	movq	%rax, 48(%rsp)
	call	_ZN1B1fEv
	leaq	48(%rsp), %rcx
	call	_ZN1C1fEv
	xorl	%eax, %eax
	addq	$72, %rsp
	ret
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB1980:
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
	.quad	_GLOBAL__sub_I_main
	.globl	_ZTS1A
	.section	.rdata$_ZTS1A,"dr"
	.linkonce same_size
_ZTS1A:
	.ascii "1A\0"
	.globl	_ZTI1A
	.section	.rdata$_ZTI1A,"dr"
	.linkonce same_size
	.align 8
_ZTI1A:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS1A
	.globl	_ZTS1B
	.section	.rdata$_ZTS1B,"dr"
	.linkonce same_size
_ZTS1B:
	.ascii "1B\0"
	.globl	_ZTI1B
	.section	.rdata$_ZTI1B,"dr"
	.linkonce same_size
	.align 8
_ZTI1B:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS1B
	.quad	_ZTI1A
	.globl	_ZTS1C
	.section	.rdata$_ZTS1C,"dr"
	.linkonce same_size
_ZTS1C:
	.ascii "1C\0"
	.globl	_ZTI1C
	.section	.rdata$_ZTI1C,"dr"
	.linkonce same_size
	.align 8
_ZTI1C:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS1C
	.quad	_ZTI1A
	.globl	_ZTV1B
	.section	.rdata$_ZTV1B,"dr"
	.linkonce same_size
	.align 8
_ZTV1B:
	.quad	0
	.quad	_ZTI1B
	.quad	_ZN1B1fEv
	.globl	_ZTV1C
	.section	.rdata$_ZTV1C,"dr"
	.linkonce same_size
	.align 8
_ZTV1C:
	.quad	0
	.quad	_ZTI1C
	.quad	_ZN1C1fEv
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (Rev2, Built by MSYS2 project) 6.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
