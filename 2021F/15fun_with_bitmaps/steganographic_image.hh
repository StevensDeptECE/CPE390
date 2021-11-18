#include "stb_image.h"
#include "stb_image_write.h"
#include <iostream>

class steganographic_image {
private:
	int w,h,c;
	const char *filename;
	uint32_t start; // start of the data (x=10,y=13) 13*w+h
	uint32_t stride; // how many to skip =2
	unsigned char *rgb; // pointer to the data
public:
	/*
		Load up an image and set up steganography parameters
		start:  starting pixel into which to start hiding data
		stride: how many pixels to skip each time (1 would be every pixel)
	 */
	steganographic_image(const char filename[],
											 uint32_t start,
											 uint32_t stride);

	~steganographic_image() {
		stbi_image_free(rgb);
	}
	steganographic_image(const steganographic_image& orig) = delete;
	steganographic_image& operator =(const steganographic_image& orig) = delete;
	
	/*
		hide len 64-bit words of data in the image
		using start and stride
		this function will write 1 bit into each color red,green,blue
		so 3 bits per pixel used
	 */
	void hide(const uint64_t data[], uint32_t len);

	void recover(uint64_t data[], uint32_t len);

	void write() {
		stbi_write_jpg(filename, w, h, c, rgb, w * c);
		std::cout << "File written to " << filename << std::endl;
	}
};
