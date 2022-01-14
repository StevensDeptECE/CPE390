#include <iostream>

int main() {
  int a;
	cin >> a;

	uint32_t b = a * 2; // a << 1                 lsl r0, #1
  uint32_t c = a / 4; // c = a >> 2;            lsr r0, #2
	uint32_t d = a >> 3 << 3; //    19 = 10011
  //  10011 --> 10 --> 10000 truncate to multiple of 8 pow(2,3)
	// machine language: ROL ROR
	// r0=10000000 00000000 00000000 00000000
	// ror r0, #31
	// r0 00000000 00000000 00000000 00000001

	int e = ((a << 5) | (a >> 27)); // --> ror r0, #27


	// bitwise operations
	uint32_t x = 0xF1234567;
	uint32_t y = 0xA4B8C123;
	uint32_t z = x & y; // bitwise AND     AND r0, r1, r2    r0 = r1 AND r2

	/*
		sub r0, r1, r2   //r0 = r1 - r2
    cmp r1, r2       //r1-r2 and set status flags accordingly

    and r0, r1, r2   // r0 = r1 AND r2
    tst r1, r2       // compute r1 AND r2 and set the flags

	 */


	z = x | y;         // orr r0, r1, r2    r0 = r1 OR r2
	z = x ^ z;         // eor r0, r1, r2    r0 = r1 XOR r2
  z = ~x;            // mvn r0, r1        r0 = NOT r1
	/*
    BIC = A AND NOT B

		A   B     A AND B    A OR B       A XOR B        A BIC B
    0   0       0          0            0              0 
    0   1       0          1            1              0
    1   0       0          1            1              1
    1   1       1          1            0              0


    r0 = 1001 1101 0100 1010 0101 0101 0101 1xx1
                                            1001 AND
                                            0110
    r0 = 0x9D4A555?
    and r0, #0xFFFFFFF9  this is too long, max constant in immediate mode = 255
    bic r0, #6



    set bits  (make bits -->1)
    clear bits (make bits -->0)
    toggle bits (flip bits)
		test bits   (tell me whether bit x = 1 or 0)

		bitmasking

		0b101010101  // binary
    0x9DEFE      // hex (base 16)
    01234567     // octal (base 8)

    x=0xx10xx1
      10011001
    in C++ make the bits marked x zero

    x = x & 0x99;

    y = 0xx00x11
        01100100
    y = y | 0x64;

    XOR: toggles
    a = a ^ a; // a = 0      XOR %eax, %eax  %eax = 0
    z = 0xxx1101
        01110000

    z = z ^ 0x70;



    nand =  ~(a & B)
    ~a & ~b = ~(a | b) De Morgan's Law


		bit testing
		w = 0101010110100101010010101010x0110
        000000000000000000000000000010000
		if ((w & 0x10) {
    }

    if ((w & 0x10) != 0) {

		}

    tst r0, #0x10
    bne true....
    or you get here and it's false

        010101010101011010101010000001011
    w = 0101010101010110101010100xxx0101x
        000000000000000000000000011100001
        ---------------------------------
        0000000000000000000000000xxx0000x

    tst r0, #0xe1
    bne somebitsareset

		r0=0101010101010110101010100xxx0101x
       000000000000000000000000011100001
       000000000000000000000000011000001
 cmp   000000000000000000000000011100001
    and r1, r0 #0xe1
    cmp r1, #0xe1
    beq allbitsareset
    




	 */
	
