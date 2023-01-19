	.globl main
main:
	mov	$6, %rcx
	mov	$7, %rdx
#	call    f    
	// when you get here, rax should be (rcx + rdx)/2
	// remember, the div instruction on intel is complicated and slow
	// use logical shift to achieve the division for speed

	mov     $F2C729E1D6BA83650, %rcx
	#	call splithex
	// your function split should take rcx and take 1st, 3rd, etc
	// digits -- in this example FC2916A35 saving in rax
	// 2nd, 4th, etc saving in rbx
	// note this is not the standard calling convention,
	//just having fun

	// given 2 inputs: rcx, rdx
	// extract the bits in rcx corresponding to the mask rdx
	// and compare whether the bits match rdx
	// for example, if rcx = 1101, and the mask rdx = 101
	//                        101
	//                    they match!
	// but if rcx = 1101
	//                11
	//              
	mov     $f2c7eb, %rcx
	mov     $
	

	
	ret
