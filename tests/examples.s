#random load/and/shift problem
	.global $fn
$fn:
	ldr	r0, =0x$hw
	mov	r1, #0x$hb
	lsl	r1, #$sh
	add	r1, r0
	lsr	r1, #$sh
	ldr	r2, =0x$hw
	and	r2, r1
	bx	lr
@END
#random AND/SHIFT/OR problem
	.global $fn
$fn:
	ldr	r0, =0x$hw
	ldr	r1, =0x$hw
	$arith	r1, r0
	and	r2, r1
	lsl	r2, #$sh
	or	r2, #0x$hb
	bx	lr
@END
#random AND/XOR problem
	.global $fn
$fn:
	ldr	r0, =0x$hw
	ldr	r1, =0x$hw
	$arith	r1, r0
	and	r2, r1
	lsl	r2, #5
	eor	r2, #0x$hb
	bx	lr
@END
# random countdown loop problem	
	.global $fn
$fn:
	mov	r1, #$u8
$lab:
	$ish	r1, #$sh
	subs	r0, #$countDown
	bne	$lab
	bx	lr
@END

	# countdown loop with check that count > 0
	.global $fn
$fn:
	cmp	r0, #0
	beq	out
	mov	r1, #$u8
$lab:
	$ish	r1, #$sh
	subs	r0, #$countDown
	bne	$lab
out:	
	bx	lr
@END

	# countup loop
	.global $fn
$fn:
	mov	r1, #0
$lab:
	add	r1, #1
	cmp	r1, r0
	blt	$lab
	bx	lr
@END

	# countup loop checking that r0 != 0
	.global $fn
$fn:
	cmp	r0, #0
	beq	out
	mov	r1, #0
$lab:
	add	r1, #1
	cmp	r1, r0
	blt	$lab
out:
	bx	lr
@END
	
