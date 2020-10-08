  .global _Z15readEntireArrayPKii
_Z15readEntireArrayPKii:
	@ left as an exercise!
	bx	lr


  .global _Z21readOneMemoryLocationPKii
_Z21readOneMemoryLocationPKii:
	@r0 = address of the array
	@r1 = size = count
1:
	ldr	r2, [r0]
	subs	r1, #1
	bne   	1b
	bx 	lr

