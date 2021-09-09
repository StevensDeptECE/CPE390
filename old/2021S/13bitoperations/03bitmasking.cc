int main() {
	int a = 0xABCE7651;     //1010 1011 1100 1110 0111 0110 0101 0001
	int mask = 0x00000F00;  //0000 0000 0000 0000 0000 1111 0000 0000

	int b = a & mask; // k eep only the 6
	// b = 0x00000600
	//  ldr r1, #MASK
	//  and r0, r1
                         	//1111 1111 1111 1111 1111 0000 1111 1111
	b = a & ~mask; // 6 is removed
	// b = 0xABCE7051
	cout << hex << b << '\n';
	//  ldr r1, #MASK
	//  mvn r1, r1
	//  and r0, r1

	// give me the 14th bit of a
	
	int c = a & ( 1 << 14);
	//a = xxxxxxxxxxyxxxxxxxxxxxxxx
	//c = 0000000000y00000000000000

	

}
