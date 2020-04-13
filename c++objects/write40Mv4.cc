#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <iostream>
using namespace std;

int main(int argc, char* argv[]) {
	const int n = 10000000;
	int fh = open("test.dat", O_WRONLY);
	if (fh < 0) {
		cerr << "Could not open file";
		return -1;
	}
	
	int SIZE = atoi(argv[1]);
	int buffer[SIZE/4];
	int fillBuffer = SIZE / 4; // 32768 / 4 = 8192

	// 8192000
	/*
		x x x x   x x x x

	 */
	int val = ('\n' << 24) | ('2' << 16) | ('/' << 8) | '1';
	for (int i = 0; i < n/(SIZE/4); i++) {
		for (int j = 0; j < fillBuffer; j++) {
			buffer[j] = val;
		};
		write(fh, buffer, SIZE); // write the last fractional part
		
	}
	int remaining = n % fillBuffer;
	for (int j = 0; j < remaining; j++) {
		buffer[j] = val;
	};
	write(fh, buffer, remaining*sizeof(int)); // write the last fractional part
	close(fh);
}

/*
 to go faster yet (hard)

 1. write to the buffer
 2. when it's full, write to disk IN ANOTHER THREAD.
 3. while that's going on, use another buffer and keep writing
*/

