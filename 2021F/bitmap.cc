#include <iostream>
using namespace std;

class bitmap {
private:
	static constexpr uint32_t B = 0x80000000; //1000 0000 0000 0000 0000 0000 0000 0000
	uint32_t* m;
	uint32_t w, h;
public:
	bitmap(uint32_t xsize, uint32_t ysize) : w((xsize+31)/32), h(ysize) {
		m = new uint32_t[(xsize+31)/32 * ysize];
	}

		
	void vertLine(uint32_t y1, uint32_t y2, uint32_t x) {
		uint32_t mask = B >> (x % 32);

    for (uint32_t y = y1; y <= y2; y++) {
      m[y*3 + x/32] |= mask;
		}
	}
	/*
		0 1 2 3
    4 5 6 7
    8 9 10 11
	 */
	void print() const {
		int c = 0;
		for (int y = 0; y < h; y++) {
			for (int x = 0; x < w; x++) {
				for (int j = 0; j < 32; j++) {
					if (m[c] & (B >> j))
						cout << '1';
					else
						cout << '0';
				}
				c++;
			}
			cout << '\n';
		}
	}
};

int main() {
	bitmap bm(96, 4);
	bm.vertLine(0,3,30);
	bm.print();
}
