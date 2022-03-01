#include <iostream>
using namespace std;
/*
	I once wrote this as a demo for high school thinking I would 
	find out the real autofocus algorithm later.
	Turns out, it is the one that everyone uses:
	estimate focus by summing the absolute value of the difference
	between every pixel to right, left, up and down. The higher the
	number, the "sharper" the picture is.

	However, this algorithm has a bug. Find it!
 */
uint64_t autofocus(uint32_t img[320][200]) {
	uint64_t sum = 0;
	for (int i = 0; i < 320; i++) {
		for (int j = 0; j < 200; j++) {
			sum += abs(double(img[i][j]) - double(img[i][j-1])) +
				abs(double(img[i][j])-double(img[i-1][j]));
		}
	}
	return sum;
}

int main() {
	// consider this fixed-size 2d array to be a picture
	// (happens to be all black, but still...)
	uint32_t myImage[320][200] = {0};
	uint64_t af = autofocus(myImage);
	cout << af << '\n';
}
