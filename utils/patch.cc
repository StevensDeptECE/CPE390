#include <iostream>
#include <sstream>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>

using namespace std;

int getHexDigit(char c) {
	if (c >= '0' && c <= '9')
		return c - '0';
	else if (c >= 'A' && c <= 'F')
		return c - 'A' + 10;
	throw "BAD HEX CHARACTER";
}

int main(int argc, char* argv[]) {
	if (argc < 3) {
		cerr << "Usage: patch filename offset bytes\n";
		return -1;
	}
	const char* filename = argv[1];
	stringstream ss;
	ss << hex << argv[2];
	uint32_t offset;
	ss >> offset;

	// call unix level 2 I/O directly
	int fh = open(filename, O_RDWR); // file should already exist
	struct stat s;
	fstat(fh, &s);
	uint32_t len = s.st_size;
	uint8_t* buf = new uint8_t[len];
	int bytesRead;
	if ((bytesRead = read(fh, buf, len)) != len) {
		cerr << "problem reading file, read=" << bytesRead << " len=" << len << "\n";		
	}
	uint32_t start = offset;
	for (int i = 3; i < argc; i++) {
		uint8_t b = (getHexDigit(argv[i][0]) << 4) + getHexDigit(argv[i][1]);
		cout << b << ' '; // echo it back out in decimal for now
		buf[offset++] = b;
	}
	lseek(fh, start, SEEK_SET);
	write(fh, buf+start, offset - start + 1);
	close(fh);
}
