/*
	level 2 I/O kernel
	open
	read
	write
	close

 */
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

using namespace std;

int main() {
	int fh = open("test.dat", O_RDONLY);
	if (fh < 0) {
		cerr << "can't open file \n";
		exit(-1);
	}

	constexpr uint32_t BUFSIZE = 4096;
	char buf[BUFSIZE];
	
	int bytesRead;

	while ((bytesRead = read(fh, buf, BUFSIZE)) > 0)
		;
	close(fh);
}


	
