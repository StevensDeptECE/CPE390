#include <iostream>
#include <iomanip>

using namespace std;
void compress(const uint32_t a[], uint32_t len, uint32_t out[]) {
	int out_index = 0;
	for (uint32_t i = 0; i < len; i += 16) { // do 16 at a time
		uint32_t sum = 0; // this gets stored in a register. Compute 32 bits

		for (uint32_t j = i; j < _______; j++) { // how many do we do?
			// move the existing sum to the left, then OR in the new value
			sum = (___________) | ________;
			sum = (___________) + ________; // + works the same since the two new bits are to the right
		}
		out[out_index++] = sum;
	}
}

/*
  Even when you successfully complete the above code, it has flaws.
  What would happen if a value in the array is NOT in the range 0 to 3?
  Write a second version of the code above that corrects this problem,
	and also handle a list which is not a length that is a multiple of 16 long

*/

void dump(const uint32_t x[], uint32_t len) {
	cout << hex;
	for (uint32_t i = 0; i < len; i++)
		cout << x[i] << " ";
	cout << '\n';
}

int main() {
	// given an array a of integers ranging from 0 to 3, pack each number into two bits
	// store into array b. This is a compression factor of 16.

	uint32_t a[] = {
		3, 2, 1, 3, 2, 1, 0, 0,
		1, 3, 2, 1, 2, 3, 1, 2,
		3, 1, 2, 3, 3, 3, 1, 3,
		2, 1, 2, 2, 2, 1, 1, 0
	};

	uint32_t out1[2];
	// read in every element of a and write into b
	compress(a, 32, out1);
  dump(out1, 2);

	uint32_t b[] = {
		3, 2, 1, 3, 2, 1, 0, 0,
		1, 3, 2, 1, 2, 3, 1, 2,
		3, 1, 2, 5, 1, 3, 1, 7, // note the 5 and 7 on this line
		2, 1, 2, 2, 2, 1, 1, 0,
		2, 1, 1, 0
	};

	uint32_t out2[3];
	compress2(b, 36, out2);
	dump(out2, 3);
}
