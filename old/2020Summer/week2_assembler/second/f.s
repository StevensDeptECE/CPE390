	@r0 = first parameter in
	.global	_Z1fi
_Z1fi:
	add  r0, r0, #1  @r0 = r0 + 1       add r0, #1
	@ whatever you want to return is in r0
	bx   lr  @ return 
