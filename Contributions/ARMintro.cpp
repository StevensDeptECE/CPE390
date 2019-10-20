/*Intro to ARM

	//LOADING VARIABLES
	MOV R0, R1		//moves value of R1 into R0

	LDR R0, R1		//loads register R2 with value of R3 (used to move data from memory)

	//MATHEMATICAL OPERATIONS
	ADD R0, R0, R1	//R0=R0+R1

	SUB R0, R0, R1	//R0=R0-R1

	MUL R0, R0, R1	//R0=R0*R1

	//BITS
	//true = 1; false =0
	AND			//True only when 1&1

	ORR			//True when 1&0, 0&1, 1&1

	EOR			//True when 1&0, 0&1
	*/

	//EXAMPLES:

	MOV R0, #4		//R0=4
	MOV R1, #10   	//R1=10
	LDR R3, #0xA28E	//R3=1010 0010 1000 1110
	LDR R4, #0xF6ED	//R4=1111 0110 1110 1101

	 
	ADD R5, R0, R1	//R5=14
	SUB R1, R5, R0	//R1=10
	 
	AND R6, R3, R4	//R3=1010 0010 1000 1110
		                          //R4=1111 0110 1110 1101
		                          //R6=1010 0010 1000 1100= 0xA28C

	ORR R7, R3, R4	//R3=1010 0010 1000 1110
				                    //R4=1111 0110 1110 1101
				                    //R7=1111 0110 1110 1111=0xF6EF

	EOR R8, R6, R7	//R6=1010 0010 1000 1100
				                    //R7=1111 0110 1110 1111
				                    //R8=0101 0100 0110 0011=0x5463
