// what will the compiler do to make code faster
int main() {
	int a = 2 * 3; // 6   compile-time constants are precomputed
	int x[2*3];

	int b;
	cin >> b;
	int c = b*2; // b << 1
	int d = b * 32; // b << 5

	int e = b / 16; // b >> 4    ASR  (arithmetic because it's signed)

	uint64_t f = b % 5; //  b - b / 5 * 5
	
	uint64_t g = b % 64; // AND x1, x0, #63
 
	//10101010010101010xxxxxx
	//00000000000000000111111

  uint32_t h =  (b >> 2) | (b << (32-2)); // ror w0, #2
	uint32_t i =  (b << 3) | (b >> (32-3)); // ror w0, #29
	//101xx
	//1xx10
}	
