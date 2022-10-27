int set(int v, int bitpos) {
	return v | (1 << bitpos);
}

int clear(int v, int bitpos) {
	return v & ~(1 << bitpos);
}

int toggle(int v, int bitpos) {
	return v ^ (1 << bitpos);
}

//  rrrrrrrrggggggggbbbbbbbb

uint32_t make_color(uint8_t r, uint8_t g, uint8_t b) {
	uint32_t temp = r;
	temp = (temp << 8) | g;
	temp = (temp << 8) | b;
	return temp;
}

 int f(int x, int y)
	return x * 2 + y / 4;
}

if you have a 4 bit number
x = abcd
	  0abc
	  d000
	(x >> 1)|	(x << 3)

	uint32_t x = ...;
  11000000000000000000000000000001
	01100000000000000000000000000000
	10000000000000000000000000000000
	11100000000000000000000000000000
	(x >> 1)|	(x << 31)

  0   1    2
	3   4    5
	6   7    8
	9  10   11

	
	void vertLine(uint32_t bitmap[3*4], uint32_t y1, uint32_t y2, uint32_t x) {
		const uint32_t B = 0x80000000; //1000 0000 0000 0000 0000 0000 0000 0000
		//		which word = x / 32
		//    position within word  = x % 32 = x & 31
		
		uint32_t mask = B >> (x % 32); // 0b00000000000000000000000000000010
    for (uint32_t y = y1; y <= y2; y++) {
      bitmap[y*3 + x/32  ] |= mask
			}
	}
int main() {
	cout << f(3, 5);
}
