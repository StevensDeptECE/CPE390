#include <iostream>
#include <unistd.h>
#include <fcntl.h>
using namespace std;

/**
 * @author Dov Kruger
 * open source
 * This example shows Unix level 2 I/O (direct kernel access) for files
 * We are going to compile with -S -O2 to look at how kernel calls are done
 */
int main() {
	int fh = open("test.dat", O_RDWR|O_CREAT);
	if (fh < 0) {
		cerr << "Can't open file\n";
		exit(0);
	}
	const char msg[] = "this is a test";
	write(fh, msg, sizeof(msg));
	close(fh);
}

	
