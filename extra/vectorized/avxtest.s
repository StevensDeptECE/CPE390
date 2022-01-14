/*
	This code is an exploration of Intel AVX2 instructions
	see: https://www.codeproject.com/Articles/874396/Crunching-Numbers-with-AVX-and-AVX
	Reference manual for all AVX Instructions:
	https://drive.google.com/file/d/16sV92pQrnWm_N-TPfFqAdRNl5jiqGmkM/view?usp=sharing
*/
	// load (%eci into every double in %ymm0?)
        vloadupspd       %ymm0, (%rdi)
	//vbroadcastsd	%ymm0, 32(%rdi) 

	//	vmovapd
	// add every double in ymm0 to corresponding in ymm1?
	// ymm2 = ymm0 + ymm1 (4x double)
	vaddpd	%ymm0, %ymm1, %ymm2	
	
