#include <iostream>
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

using namespace std;

int main(int argc, char **argv) {
	try {
		int w,h,c;
		uint8_t* rgb = stbi_load("catseye_orig.jpg", &w, &h, &c, 0);


		stbi_write_jpg("catseye_copied.jpg", w, h, c, rgb, w * c);

		stbi_image_free(rgb);
	} catch(const char* msg) {
		cout << msg << '\n';
	}
	return 0;
}
