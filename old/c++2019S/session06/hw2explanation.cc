/*     1
	1628817
 +1215824
=========

 + 2100000000
   0000000001
=============

 */

int main() {
	const uint32_t MAXINT = 3100000000;
	uint32_t a[4] = {0,0,2,MAXINT};  //a[0] a[1]  a[2]  a[3]
	uint32_t b[4] = {0,0,3,MAXINT};  //b[0] b[1]  b[2]  b[3]
	uint32_t c[4]; //0 0 5 2
	c[3] = a[3] + b[3]; // ADD and set the carry bit ADDS
	c[2] = a[2] + b[2] + c; // ADC

	
