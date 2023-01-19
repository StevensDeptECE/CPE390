#include <iostream>

class bitmap {
private:
	int w,h;
	uint32_t* rgb; // pointer to the data rgba?
	void plotLineLow(uint32_t x0, uint32_t y0, uint32_t x1, uint32_t y1, uint32_t color);
	void plotLineHigh(uint32_t x0, uint32_t y0, uint32_t x1, uint32_t y1, uint32_t color);

public:
	bitmap(uint32_t w, uint32_t h, uint32_t color);
	bitmap(const char filename[]);
	~bitmap();
	bitmap(const bitmap& orig) = delete;
	bitmap& operator =(const bitmap& orig) = delete;
	
	void load(const char filename[]);
	void save(const char filename[]);

	void point(uint32_t x, uint32_t y, uint32_t color) {
		rgb[y*w + x] = color;
	}
	
	// fill the image with random bits
	void random(uint32_t x, uint32_t y, uint32_t w, uint32_t h);
	
	// set the entire bitmap to a color
	void clear(uint32_t color);
	void horiz_line(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color);
	void vert_line(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color);
	void grid(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
						uint32_t divx, uint32_t divy, uint32_t color);
	//	https://en.wikipedia.org/wiki/Bresenham's_line_algorithm
	void line(int32_t x1, int32_t y1, int32_t x2, int32_t y2, uint32_t color);
	//	https://en.wikipedia.org/wiki/Xiaolin_Wu%27s_line_algorithm
	void wuline(uint32_t x1, uint32_t y1, uint32_t x2, uint32_t y2, uint32_t color);
	void rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color);
	void fill_rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t color);

	// draw a rounded rectangle with corner radius r
	void round_rect(uint32_t x, uint32_t y, uint32_t w, uint32_t h, uint32_t r,
									uint32_t color);
	void circle(uint32_t x, uint32_t y, uint32_t d, uint32_t color);
	void fill_circle(uint32_t x, uint32_t y, uint32_t d, uint32_t color);
	void flood_fill_allcolor(int32_t x, int32_t y,
									uint32_t findcolor, uint32_t replace_color);
	void flood_fill_untilcolor(int32_t x, int32_t y,
									uint32_t findcolor, uint32_t replace_color);
};
