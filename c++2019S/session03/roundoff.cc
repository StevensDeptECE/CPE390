int main() {
	//  1/2 = 0.5
	//  1/5 = 0.2

	// .      1/2 1/4 1/8 1/16 ...
	//  1/2 = .1   0   0    0   0000000000000000000000000
	
	//  1/3 = .0   1   0    1   10000000000000000000000000000
	// 1/10 = .0   0   0    1   1  0   1 1  0  1  1

	/* floating point
		 sign
		 exponent
		 mantissa

    float = xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx
		        seeeeeee emmmmmmm mmmmmmmm mmmmmmmm

s = 0 number is positive
s = 1 number is negative

exponent +127 -128
mantissa = the leadings digits of the number 23 bits
    6.02e+23
		1.234567

		1000000000
    double =
 seeeeeee eeeemmmm mmmmmmmm mmmmmmmm mmmmmmmm mmmmmmmm mmmmmmmm mmmmmmmm
    .101101110101010101010101010101010 x 2^exponent
		.001   .1  exponent =-2
	*/
	double d1 = -1.23e+10;

}
