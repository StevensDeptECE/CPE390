#include <png++/png.hpp>
void build1bppBitmap() {
	constexpr int W = 128, H = 128;
	png::image< png::index_pixel > image(W,H);
	png::palette pal(2);
	pal[0] = png::color(0,0,0);
	pal[1] = png::color(255,0,0);
	image.set_palette(pal);
	char* first = (char*)&image[0][0];
#if 0
	uint32_t* p = &image[0][0]; // find start of bitmap
	for (uint32_t i = 0; i < W*H/32; i++, p++)
		*p = 0; // set all bits to zero
#endif
	for (int i = 0; i < W; i++)
		for (int j = 0; j < H; j++)
			image[i][j] = 0;
	
	uint32_t x = 20, y = 20, w = 10;
	for (int i = y; i < y+w; i++)
		for (int j = x; j < x+w; j++)
			image[i][j] = 1;

	#if 0
	p = &image[0][0]; // start at beginning again
	constexpr uint32_t mask = 0x3FF00000;
	constexpr rowSize = W / 32;
	for (int count = 0; count < 10; count++) {
		*p |= mask;
		p += rowSize;
	}
	#endif

	image.write("1bpp.png");
}

void buildIndexedBitmap() {
	png::image< png::index_pixel > image(200,100);
	png::palette pal(256);
	pal[0] = png::color(0,0,0);
	pal[1] = png::color(255,0,0);
	pal[2] = png::color(0,255,0);
	pal[3] = png::color(0,0,255);
	for (size_t i = 0; i < pal.size(); ++i) {
		pal[i] = png::color(i, 255 - i, i);
	}
	image.set_palette(pal);
	for (uint32_t y = 0; y < image.get_height(); ++y) {
    for (uint32_t x = 0; x < image.get_width(); ++x) {
			image[y][x] = 0;
    }
	}

	for (uint32_t y = 10; y < 30; ++y) {
    for (uint32_t x = 10; x < 30; ++x) {
			image[y][x] = 1;
    }
	}

	image.write("test.png");
}

int main() {
	buildIndexedBitmap();
	build1bppBitmap();
}
