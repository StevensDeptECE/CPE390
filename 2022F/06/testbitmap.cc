#include "bitmap.hh"
#include <iostream>
#include <fstream>

using namespace std;


int main() {
	bitmap b(1024, 800, 0xFF000000);
	b.clear(0xFF000000);
	b.random(500, 400, 300, 200);
	b.horiz_line(100, 400, 50, 0xFF000080);
	b.horiz_line(100, 400, 100, 0xFF0000FF);
	b.horiz_line(100, 400, 170, 0xFF0000FF);
	b.vert_line(100, 180, 110, 0xFF0000FF);
	b.vert_line(100, 180, 350, 0xFF0000FF);

	b.vert_line(130, 180, 310, 0xFF0000FF);
	b.horiz_line(120, 330, 155, 0xFF0000FF);
	
	b.flood_fill_allcolor(115, 110, 0xFF000000, 0xFFFFFFFF);
	b.vert_line(100, 400, 100, 0x00FF00FF);

	b.grid(600,500, 200, 200, 6, 6, 0xFFFF0000);
	b.flood_fill_untilcolor(605, 510, 0xFFFF0000, 0xFFFFFFFF);
	
	for (uint32_t x = 200; x <= 600; x += 100)
		b.fill_rect(x,200, 50,50, 0xFF00FFFF);
	for (uint32_t x = 200; x <= 600; x += 100)
		b.fill_circle(x,400, 50, 0xFF00FFFF);
	b.rect(200,260, 50,50, 0xFFFFFFFF);
	b.save("test.webp");
}
