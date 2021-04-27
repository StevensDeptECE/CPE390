#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"
/*
Dynamic memory bitmap homework

hex: base 16
0   0000
1   0001
2   0010
3   0011
4   0100
5   0101
6   0110
7   0111
8   1000
9   1001
A   1010
B   1011
C   1100
D   1101
E   1110
F   1111

row-major order
    0 1 2 3
    4 5 6 7
    8 9 ...
    
    https://github.com/nothings/stb/blob/master/stb_image_write.h
    our color format is RRGGBBAA  (red, green, blue, alpha = transparency)
*/

class Bitmap {
private:
  uint32_t w,h;
  uint32_t* pixel; // allocate an array of w*h elements
public:

  void set(uint32_t x, uint32_t y, uint32_t color) {
    pixel[y * w + x] = color;
  }
  uint32_t& operator ()(uint32_t x, uint32_t y) {
    return pixel[y * w + x];
  }
  uint32_t operator ()(uint32_t x, uint32_t y) const {
    return pixel[y * w + x];
  }
  void horizLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
		/*
			This implementation is slow. it computes pixel[y*w+x] over and over again
			You should be able to go sequentially making your code simpler and faster
		*/
		for (uint32_t x = x1; x <= x2; x++)
			set(x, y, color);
  }
  void vertLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
		// implement this
	}

	void fillRect(uint32_t x, uint32_t y,
								uint32_t w, uint32_t h, uint32_t color) {
		// implement
	}
	
  void write(const char filename[]) {
     stbi_write_png(filename, w, h, 4, pixels, 4*w);
  }
	void writeIndexedBitmap(const char filename[]) {
		// Extra credit: write indexed bitmap
		// 1. count how many different colors there are in your picture
		// 2. if it is <= 256, create an indexed bitmap with the picture
		// 3. first create the index, an array of colors
		// 4. create array of bytes, each of which indexes into the array of colors
		// 5. write out indexed png

	}
};



int main() {
  Bitmap bm(640, 480, 0xFFFFFF00); // set every pixel to be color white
  bm.set(0,0, 0x80808000); // gray dot top left
  bm(3,4) = 0x80808000; // gray dot at x=3,y=4 using operator ()
  bm.horizLine(0, 500, 10, 0x0000FF00); // x1= 0 x2= 500, y = 10 BLUE
  bm.vertLine(0, 100, 10, 0xFF000000); // y1 = 0 y2 = 100, x = 10 RED
  bm.rect(300,100, 50, 50, 0x00FF0000);; //x=300,y=100, w=50,h=50 GREEN
	bm.vertLineXOR(0, 5, 
  bm.write("small.png");

  Bitmap bm2(1024, 1024, 0xFFFFFF00); // set every pixel to be color 0
  bm2.horizLine(0, 500, 0, 0x0000FF00); // x1= 0 x2= 500, y = 0 BLUE
  bm2.vertLine(0, 100, 10, 0xFF000000); // y1 = 0 y2 = 100, x = 10 RED
  bm2.rect(300,100, 50, 50, 0x00FF0000);; //left=300,top=100, w=50,h=50 GREEN
  bm2.write("big.png");
}
