	@ how to add with carry

	ldr r0, =#ffffffff
	ldr r1, =#efffff2f
	mov r3, #0
	
	adds r2, r0,r1 // adds sets PCSR processor ? Status Register
	adc r3, #0 // if the add overflows, make r3=1

	//       r0    r1     r2
	//add128(dest, left, right)

	// 9812
	// 6851
	
	ldr r3,[r1]
	ldr r4,[r2]
	adds r5,r3,r4
	str r5,[r0]

	ldr r3,[r1]
	ldr r4,[r2]
	adcs r5,r3,r4
	str r5,[r0]

	ldr r3,[r1]
	ldr r4,[r2]
	adcs r5,r3,r4
	str r5,[r0]

	
