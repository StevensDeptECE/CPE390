	.arch armv8-a
	.file	"stack_called.cc"
	.text
.Ltext0:
	.align	2
	.p2align 4,,11
	.global	_Z1fi
	.type	_Z1fi, %function
_Z1fi:
.LVL0:
.LFB0:
	.file 1 "stack_called.cc"
	.loc 1 3 14 view -0
	.cfi_startproc
	.loc 1 4 2 view .LVU1
	.loc 1 5 2 view .LVU2
	.loc 1 6 2 view .LVU3
	.loc 1 3 14 is_stmt 0 view .LVU4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	.loc 1 10 9 view .LVU5
	mov	w4, 22
	add	x1, sp, 12
	add	x3, sp, 48
	mov	w2, 0
	.loc 1 11 6 view .LVU6
	mov	w0, 0
.LVL1:
	.loc 1 6 11 view .LVU7
	stp	xzr, xzr, [sp, 8]
	.loc 1 10 9 view .LVU8
	str	w4, [sp, 20]
	.loc 1 6 11 view .LVU9
	stp	xzr, xzr, [sp, 24]
	str	xzr, [sp, 40]
	.loc 1 8 2 is_stmt 1 view .LVU10
.LVL2:
	.loc 1 9 2 view .LVU11
	.loc 1 10 2 view .LVU12
	.loc 1 11 2 view .LVU13
	.loc 1 12 2 view .LVU14
.LBB2:
	.loc 1 12 20 view .LVU15
	b	.L3
.LVL3:
	.p2align 2,,3
.L6:
	.loc 1 13 15 is_stmt 0 view .LVU16
	ldr	w2, [x1], 4
.LVL4:
.L3:
	.loc 1 13 3 is_stmt 1 discriminator 2 view .LVU17
	.loc 1 13 7 is_stmt 0 discriminator 2 view .LVU18
	add	w0, w0, w2
.LVL5:
	.loc 1 12 2 is_stmt 1 discriminator 2 view .LVU19
	.loc 1 12 20 discriminator 2 view .LVU20
	cmp	x3, x1
	bne	.L6
.LBE2:
	.loc 1 14 2 view .LVU21
	.loc 1 15 1 is_stmt 0 view .LVU22
	add	w0, w0, 13
.LVL6:
	.loc 1 15 1 view .LVU23
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	_Z1fi, .-_Z1fi
.Letext0:
	.file 2 "/usr/include/c++/10/cstdint"
	.file 3 "/usr/include/aarch64-linux-gnu/c++/10/bits/c++config.h"
	.file 4 "/usr/include/aarch64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/aarch64-linux-gnu/bits/stdint-intn.h"
	.file 6 "/usr/include/aarch64-linux-gnu/bits/stdint-uintn.h"
	.file 7 "/usr/include/stdint.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x45d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x4
	.4byte	.LASF56
	.4byte	.LASF57
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.string	"std"
	.byte	0x8
	.byte	0
	.4byte	0x12b
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x11e
	.byte	0x41
	.uleb128 0x4
	.byte	0x3
	.2byte	0x11e
	.byte	0x41
	.4byte	0x38
	.uleb128 0x5
	.byte	0x2
	.byte	0x2f
	.byte	0xb
	.4byte	0x262
	.uleb128 0x5
	.byte	0x2
	.byte	0x30
	.byte	0xb
	.4byte	0x26e
	.uleb128 0x5
	.byte	0x2
	.byte	0x31
	.byte	0xb
	.4byte	0x27a
	.uleb128 0x5
	.byte	0x2
	.byte	0x32
	.byte	0xb
	.4byte	0x286
	.uleb128 0x5
	.byte	0x2
	.byte	0x34
	.byte	0xb
	.4byte	0x322
	.uleb128 0x5
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.4byte	0x32e
	.uleb128 0x5
	.byte	0x2
	.byte	0x36
	.byte	0xb
	.4byte	0x33a
	.uleb128 0x5
	.byte	0x2
	.byte	0x37
	.byte	0xb
	.4byte	0x346
	.uleb128 0x5
	.byte	0x2
	.byte	0x39
	.byte	0xb
	.4byte	0x2c2
	.uleb128 0x5
	.byte	0x2
	.byte	0x3a
	.byte	0xb
	.4byte	0x2ce
	.uleb128 0x5
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.4byte	0x2da
	.uleb128 0x5
	.byte	0x2
	.byte	0x3c
	.byte	0xb
	.4byte	0x2e6
	.uleb128 0x5
	.byte	0x2
	.byte	0x3e
	.byte	0xb
	.4byte	0x39a
	.uleb128 0x5
	.byte	0x2
	.byte	0x3f
	.byte	0xb
	.4byte	0x382
	.uleb128 0x5
	.byte	0x2
	.byte	0x41
	.byte	0xb
	.4byte	0x292
	.uleb128 0x5
	.byte	0x2
	.byte	0x42
	.byte	0xb
	.4byte	0x29e
	.uleb128 0x5
	.byte	0x2
	.byte	0x43
	.byte	0xb
	.4byte	0x2aa
	.uleb128 0x5
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.4byte	0x2b6
	.uleb128 0x5
	.byte	0x2
	.byte	0x46
	.byte	0xb
	.4byte	0x352
	.uleb128 0x5
	.byte	0x2
	.byte	0x47
	.byte	0xb
	.4byte	0x35e
	.uleb128 0x5
	.byte	0x2
	.byte	0x48
	.byte	0xb
	.4byte	0x36a
	.uleb128 0x5
	.byte	0x2
	.byte	0x49
	.byte	0xb
	.4byte	0x376
	.uleb128 0x5
	.byte	0x2
	.byte	0x4b
	.byte	0xb
	.4byte	0x2f2
	.uleb128 0x5
	.byte	0x2
	.byte	0x4c
	.byte	0xb
	.4byte	0x2fe
	.uleb128 0x5
	.byte	0x2
	.byte	0x4d
	.byte	0xb
	.4byte	0x30a
	.uleb128 0x5
	.byte	0x2
	.byte	0x4e
	.byte	0xb
	.4byte	0x316
	.uleb128 0x5
	.byte	0x2
	.byte	0x50
	.byte	0xb
	.4byte	0x3a6
	.uleb128 0x5
	.byte	0x2
	.byte	0x51
	.byte	0xb
	.4byte	0x38e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x120
	.byte	0xb
	.4byte	0x14b
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x122
	.byte	0x41
	.uleb128 0x4
	.byte	0x3
	.2byte	0x122
	.byte	0x41
	.4byte	0x138
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x4
	.byte	0x25
	.byte	0x15
	.4byte	0x173
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0x26
	.byte	0x17
	.4byte	0x14b
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x4
	.byte	0x27
	.byte	0x1a
	.4byte	0x192
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0x152
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x4
	.byte	0x29
	.byte	0x14
	.4byte	0x1b1
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2a
	.byte	0x16
	.4byte	0x159
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0x19
	.4byte	0x1d0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2d
	.byte	0x1b
	.4byte	0x160
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x34
	.byte	0x12
	.4byte	0x167
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x186
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x199
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x38
	.byte	0x13
	.4byte	0x1a5
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.byte	0x14
	.4byte	0x1b8
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3a
	.byte	0x13
	.4byte	0x1c4
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3b
	.byte	0x14
	.4byte	0x1d7
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x48
	.byte	0x12
	.4byte	0x1d0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.4byte	0x160
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x18
	.byte	0x12
	.4byte	0x167
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x19
	.byte	0x13
	.4byte	0x186
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1a
	.byte	0x13
	.4byte	0x1a5
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1b
	.byte	0x13
	.4byte	0x1c4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x17a
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0x19
	.byte	0x14
	.4byte	0x199
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1a
	.byte	0x14
	.4byte	0x1b8
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1b
	.byte	0x14
	.4byte	0x1d7
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x7
	.byte	0x2b
	.byte	0x18
	.4byte	0x1e3
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.4byte	0x1fb
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.4byte	0x213
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.4byte	0x22b
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.4byte	0x1ef
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x7
	.byte	0x32
	.byte	0x1a
	.4byte	0x207
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x7
	.byte	0x33
	.byte	0x1a
	.4byte	0x21f
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x7
	.byte	0x34
	.byte	0x1a
	.4byte	0x237
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3a
	.byte	0x16
	.4byte	0x173
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x7
	.byte	0x3c
	.byte	0x13
	.4byte	0x1d0
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x7
	.byte	0x3d
	.byte	0x13
	.4byte	0x1d0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x7
	.byte	0x3e
	.byte	0x13
	.4byte	0x1d0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x7
	.byte	0x47
	.byte	0x18
	.4byte	0x14b
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x7
	.byte	0x49
	.byte	0x1b
	.4byte	0x160
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4a
	.byte	0x1b
	.4byte	0x160
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4b
	.byte	0x1b
	.4byte	0x160
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x7
	.byte	0x57
	.byte	0x13
	.4byte	0x1d0
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x7
	.byte	0x5a
	.byte	0x1b
	.4byte	0x160
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x7
	.byte	0x65
	.byte	0x15
	.4byte	0x243
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x7
	.byte	0x66
	.byte	0x16
	.4byte	0x24f
	.uleb128 0xa
	.string	"f"
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	.LASF59
	.4byte	0x1b1
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x454
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x3
	.byte	0xb
	.4byte	0x1b1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0x4
	.byte	0xb
	.4byte	0x2aa
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xc
	.string	"y"
	.byte	0x1
	.byte	0x5
	.byte	0xb
	.4byte	0x2b6
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xd
	.string	"arr"
	.byte	0x1
	.byte	0x6
	.byte	0xb
	.4byte	0x454
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"sum"
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	0x1b1
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xe
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xc
	.byte	0xb
	.4byte	0x1b1
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x2aa
	.uleb128 0x10
	.4byte	0x160
	.byte	0x9
	.byte	0
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
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.8byte	.LVL0-.Ltext0
	.8byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL1-.Ltext0
	.8byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST1:
	.8byte	.LVL0-.Ltext0
	.8byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.8byte	.LVL2-.Ltext0
	.8byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST2:
	.8byte	.LVL0-.Ltext0
	.8byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.8byte	.LVL2-.Ltext0
	.8byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS3:
	.uleb128 .LVU14
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST3:
	.8byte	.LVL2-.Ltext0
	.8byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL3-.Ltext0
	.8byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL6-.Ltext0
	.8byte	.LFE0-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -13
	.byte	0x9f
	.8byte	0
	.8byte	0
.LVUS4:
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST4:
	.8byte	.LVL2-.Ltext0
	.8byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	.LVL3-.Ltext0
	.8byte	.LVL4-.Ltext0
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x24
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.8byte	.LVL4-.Ltext0
	.8byte	.LVL5-.Ltext0
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.8byte	.LVL5-.Ltext0
	.8byte	.LFE0-.Ltext0
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x24
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.8byte	0
	.8byte	0
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
.LASF0:
	.string	"__cxx11"
.LASF16:
	.string	"__int_least8_t"
.LASF27:
	.string	"int8_t"
.LASF34:
	.string	"uint64_t"
.LASF9:
	.string	"short int"
.LASF25:
	.string	"__uintmax_t"
.LASF55:
	.string	"GNU C++14 10.2.1 20210110 -mlittle-endian -mabi=lp64 -g -O2 -fasynchronous-unwind-tables"
.LASF37:
	.string	"int_least32_t"
.LASF46:
	.string	"int_fast64_t"
.LASF12:
	.string	"__uint32_t"
.LASF10:
	.string	"__uint16_t"
.LASF42:
	.string	"uint_least64_t"
.LASF50:
	.string	"uint_fast64_t"
.LASF30:
	.string	"int64_t"
.LASF31:
	.string	"uint8_t"
.LASF52:
	.string	"uintptr_t"
.LASF38:
	.string	"int_least64_t"
.LASF39:
	.string	"uint_least8_t"
.LASF22:
	.string	"__int_least64_t"
.LASF17:
	.string	"__uint_least8_t"
.LASF14:
	.string	"long int"
.LASF13:
	.string	"__int64_t"
.LASF56:
	.string	"stack_called.cc"
.LASF43:
	.string	"int_fast8_t"
.LASF7:
	.string	"__uint8_t"
.LASF45:
	.string	"int_fast32_t"
.LASF53:
	.string	"intmax_t"
.LASF23:
	.string	"__uint_least64_t"
.LASF1:
	.string	"unsigned char"
.LASF58:
	.string	"__gnu_cxx"
.LASF5:
	.string	"signed char"
.LASF47:
	.string	"uint_fast8_t"
.LASF33:
	.string	"uint32_t"
.LASF3:
	.string	"unsigned int"
.LASF32:
	.string	"uint16_t"
.LASF24:
	.string	"__intmax_t"
.LASF54:
	.string	"uintmax_t"
.LASF44:
	.string	"int_fast16_t"
.LASF2:
	.string	"short unsigned int"
.LASF57:
	.string	"/home/pi/git/CPE390/2022S/10review_test1_and_asm"
.LASF6:
	.string	"__int8_t"
.LASF59:
	.string	"_Z1fi"
.LASF26:
	.string	"char"
.LASF20:
	.string	"__int_least32_t"
.LASF41:
	.string	"uint_least32_t"
.LASF49:
	.string	"uint_fast32_t"
.LASF29:
	.string	"int32_t"
.LASF40:
	.string	"uint_least16_t"
.LASF48:
	.string	"uint_fast16_t"
.LASF51:
	.string	"intptr_t"
.LASF28:
	.string	"int16_t"
.LASF15:
	.string	"__uint64_t"
.LASF35:
	.string	"int_least8_t"
.LASF36:
	.string	"int_least16_t"
.LASF4:
	.string	"long unsigned int"
.LASF18:
	.string	"__int_least16_t"
.LASF11:
	.string	"__int32_t"
.LASF8:
	.string	"__int16_t"
.LASF21:
	.string	"__uint_least32_t"
.LASF19:
	.string	"__uint_least16_t"
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
