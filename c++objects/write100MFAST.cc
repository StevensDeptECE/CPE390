#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <iostream>
using namespace std;

int main() {
	const int n = 10000000;
	int fh = open("test.dat", O_WRONLY);
	if (fh < 0) {
		cerr << "Could not open file";
		return -1;
	}
	const int SIZE = 32768;
	char buffer[SIZE];

	int c = 0;
	for (int i = 0; i < n; i++) {
		if (c >= SIZE) {
			write(fh, buffer, SIZE);
			c = 0;
		}
		buffer[c++] = '1';
		buffer[c++] = '/';
		buffer[c++] = '2';
		buffer[c++] = '\n';
	}
	write(fh, buffer, c); // write the last fractional part
	close(fh);
}
