#include <fstream>
#include "bitmap.hh"
#include <webp/decode.h>
#include <webp/encode.h>
#include <random>

using namespace std;

bitmap::bitmap(uint32_t w, uint32_t h, uint32_t color) : w(w), h(h) {
	//	this->w = w;
	// this->h = h;
	rgb = new uint32_t[w * h];
	clear(color);
}

bitmap::~bitmap() {
  delete [] rgb;
}


void bitmap::clear(uint32_t color) {
	for (int i = 0; i < w * h ; i++)
		rgb[i] = color;
}

void bitmap::horiz_line(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color){
	uint32_t pos1 = y * w + x1;
	uint32_t pos2 = y * w + x2;
	for (uint32_t i = pos1; i <= pos2; i++)
		rgb[i] = color;
}

void bitmap::vert_line(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color) {}

void bitmap::grid(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
									uint32_t divx, uint32_t divy, uint32_t color){}

void bitmap::line(int32_t x1, int32_t y1, int32_t x2, int32_t y2, uint32_t color) {}

void bitmap::wuline(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2, uint32_t color) {}

void bitmap::rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color) {}

void bitmap::fill_rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color) {
}

	// draw a rounded rectangle with corner radius r
void bitmap::round_rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t r,	uint32_t color){
}

void bitmap::circle(uint32_t x, uint32_t y, uint32_t d, uint32_t color) {}

void bitmap::fill_circle(uint32_t x, uint32_t y, uint32_t d, uint32_t color) {
}

void bitmap::flood_fill_allcolor(int32_t x, int32_t y,
																 uint32_t findcolor, uint32_t replace_color) {
}
 

void bitmap::flood_fill_untilcolor(int32_t x, int32_t y,
																	 uint32_t findcolor, uint32_t replace_color) {

}

void bitmap::random(uint32_t x, uint32_t y, uint32_t w, uint32_t h) {

}

void bitmap::save(const char filename[]) {
	uint8_t*out;
	size_t s = WebPEncodeRGBA((uint8_t*)rgb, w, h, 4*w, 100, &out);
	ofstream f(filename, ios::binary);
	f.write((char*)out, s);
	WebPFree(out);
}
