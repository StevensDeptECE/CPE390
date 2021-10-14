int f2(int x) {
	return x*2;
}
/*
  mov r1, #2
//  mul r0, r1   lsl r0, #1     1010  
  // add r0,r0
  add r0, r0, r0 lsl #2  // r0 = 5*r0


  bx  lr

 */

int f3(int a, int b) {
	return a + b;
}

int f4(int a, int b, int c, int d) {
	return (a + b + c) * d;
}

/*


	add r0, r1 // r0 = a+b
  add r0, r2 // r0 = a+b+c
  mul r0, r3 // r0 = (a+b+c)*d
  bx lr

 */

int f5(int a, int b, int c, int d, int e) {
  return a + b + c + d + e;
}

