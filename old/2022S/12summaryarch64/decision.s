	.arch armv8-a
	.file	"decision.cc"
	.text
.Ltext0:
	.align	2
	.p2align 4,,11
	.global	_Z8decisiondd
	.type	_Z8decisiondd, %function
_Z8decisiondd:
.LVL0:
.LFB0:
	.file 1 "decision.cc"
	.loc 1 1 35 view -0
	.cfi_startproc
	.loc 1 2 2 view .LVU1
	.loc 1 2 13 is_stmt 0 view .LVU2
	fcmpe	d0, d1
	.loc 1 3 1 view .LVU3
	cset	w0, mi
	ret
	.cfi_endproc
.LFE0:
	.size	_Z8decisiondd, .-_Z8decisiondd
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x79
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF3
	.4byte	.LASF4
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.4byte	0x6e
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x1
	.byte	0x16
	.4byte	0x75
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x1
	.byte	0x20
	.4byte	0x75
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"double"
.LASF5:
	.string	"decision"
.LASF3:
	.string	"decision.cc"
.LASF0:
	.string	"bool"
.LASF6:
	.string	"_Z8decisiondd"
.LASF4:
	.string	"/home/pi/git/CPE390/2022S/12summaryarch64"
.LASF2:
	.string	"GNU C++14 10.2.1 20210110 -mlittle-endian -mabi=lp64 -g -O2 -fasynchronous-unwind-tables"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
