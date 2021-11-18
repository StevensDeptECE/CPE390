#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "steganographic_image.hh"

/*
	Load up an image and set up steganography parameters
	start:  starting pixel into which to start hiding data
	stride: how many pixels to skip each time (1 would be every pixel)
*/
steganographic_image::steganographic_image(const char filename[],
																					 uint32_t start,
																					 uint32_t stride) :
	filename(filename), start(start), stride(stride) {
	rgb = stbi_load(filename, &w, &h, &c, 0);
	if (rgb == nullptr) {
		throw "file not found";
	}
}

void 	steganographic_image::hide(const uint64_t data[], uint32_t len) {
	uint32_t pos = start;
	//		const uint32_t step = 3*stride;
	for (uint32_t i = 0; i < len; i++) {
		uint64_t val = data[i];
		for (uint32_t j = 0; j < 64; j+= 3) {
			int r = val & 1ULL;
			int g = val & 2ULL;
			int b = val & 4ULL;
			//int bit3 = data[i] & 7; // 0b111
			rgb[pos] = (rgb[pos] & 0b11111110) | r;
			rgb[pos+1] = (rgb[pos+1] & 0b11111110) | g;
			rgb[pos+2] = (rgb[pos+2] & 0b11111110) | b;
			pos += 3*stride;
			val >>= 3;
		}
	}
}

void	steganographic_image::recover(uint64_t data[], uint32_t len) {
}
