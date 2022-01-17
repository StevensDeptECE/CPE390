#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image.h"
#include "stb_image_write.h"
#include <iostream>
using namespace std;

class bitmap {
private:
	uint32_t w, h;
	uint32_t *rgba; // pointer to the data
public:
	bitmap(uint32_t w, uint32_t h) : w(w), h(h) {
		rgba = new uint32_t[w*h];
		for (uint32_t i = 0; i < w*h; i++)
			rgba[i] = 0;
	}
	~bitmap() {
		delete [] rgba;
	}
  uint32_t operator ()(uint32_t x, uint32_t y) const {
		return rgba[y*w + x];
	}
  uint32_t& operator ()(uint32_t x, uint32_t y) {
		return rgba[y*w + x];
	}

	/*
		rgba-->[0,0]  [1,0]  [2,0] ...         [w-1,0]
      i--> [0,1]  [1,1]...


     i-->

           [0,h-1]            ...          [w-1,h-1]

	 */
	void horizLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
		uint32_t start = y*w + x1, end = y*w + x2;
		//		for (uint32_t x = x1; x <= x2; x++)
		//			(*this)(x, y)= color;
		for (uint32_t p = start; p <= end; p++)
			rgba[p] = color;
	}

	void vertLine(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color) {
		uint32_t start = y1*w + x, end = y2*w + x;
		for (uint32_t p = start; p <= end; p += w)
			rgba[p] = color;
	}

	void fillRect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color) {

	}

	void xorHorizLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
		uint32_t start = y*w + x1, end = y*w + x2;
		for (uint32_t p = start; p <= end; p++)
			rgba[p] ^= color;
		
	}

	void xorVertLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
    
	}

	void write(const char filename[]) {
		uint32_t c = 4;
		stbi_write_png(filename, w, h, c, rgba, w * c);
	}
};

int main() {
	bitmap b(1024, 512);
	b(1,1)=0xFFFFFFFF; // set pixel (1,1) to WHITE
	cout << b(1,2) << '\n';
	b.horizLine(0, 200, 10, 0xFF0000FF);  //red!
	b.vertLine(30, 300, 200, 0x00FF00FF);   // green!
	b.fillRect(100, 100, 50, 70, 0x0000FFFF); // blue!
  b.xorHorizLine(110, 210, 110, 0xFF0000FF); // XOR WITH red

	b.xorHorizLine(110, 210, 120, 0xFF0000FF); // XOR WITH red
	b.xorHorizLine(110, 210, 120, 0xFF0000FF); // XOR WITH red
	b.write("test.png");
}
