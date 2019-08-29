int main() {
	int a = 0xFF2C0123;
	int b = 0xA139B584;

	int AND = a & b; // AND r0, r1, r2
	int OR = a | b;	 // ORR r0, r1, r2
	int XOR = a ^ b; // EOR r0, r1, r2


	/*
		A  B   XOR
		0  0   0
    0  1   1
    1  0   1
    1  1   0

1101
1001
0100
1001
1101

	 */

	int a = 3, b = 4;
	int temp = a;
	a = b;
	b = temp;

	a = a + b;
	b = a - b; // b = a
	a = a - b; // a = b

	a = a ^ b;
	b = a ^ b;
	a = a ^ b;

	
