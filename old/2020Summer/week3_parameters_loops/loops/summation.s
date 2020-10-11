@ this code is not correct for the special case
@ where a > b and our definition states that sum=0

       .global _Z3sumii
	@r0 = a  r1 = b
 	@ sum the numbers from a to b
_Z3sumii:
	mov r3, #0
	mov r2, r0  @ r2 counts from a to b
1:	
	add r3, r2  @ r3 = r3 + r2
	add r2, #1
	cmp r2, r1
	ble 1b
        mov r0, r3  @put the answer in r0
		    @for ARM calling convention
	bx  lr

	@ more correct, will work even for special case
	@ but ugly!

 	.global _Z4sum2ii
	@r0 = a  r1 = b
 	@ sum the numbers from a to b
_Z3sumii:
        cmp r0, r1
	bgt 2f
	mov r3, #0
	mov r2, r0  @ r2 counts from a to b
1:	
	add r3, r2  @ r3 = r3 + r2
	add r2, #1
	cmp r2, r1
	ble 1b
        mov r0, r3  @put the answer in r0
		    @for ARM calling convention
	bx  lr

2:
        mov r0, #0
	bx  lr

	@same as sum2 but smaller
 	.global _Z4sum3ii
	@r0 = a  r1 = b
 	@ sum the numbers from a to b
_Z3sumii	:
	mov r3, #0
        cmp r0, r1
	bgt 2f
	mov r2, r0  @ r2 counts from a to b
1:	
	add r3, r2  @ r3 = 	r3 + r2
	add r2, #1
	cmp r2, r1
	ble 1b
2:		
        mov r0, r3  @put the answer in r0
		    @for ARM calling convention
	bx  lr

 @this is smaller yet. Not much faster
       .global _Z4sum4ii
	@r0 = a  r1 = b
 	@ sum the numbers from a to b
_Z3sumii:
	mov r2, r0  @ r2=r0
	mov r0, #0
        cmp r2, r1
	bgt 2f
1:
	add r0, r2  @ r3 = r3 + r2
	add r2, #1
	cmp r2, r1
	ble 1b
2:   	    @answer r0 for ARM calling convention
	bx  lr
