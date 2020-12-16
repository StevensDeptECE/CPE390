#include <unistd.h>
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

using namespace std;

int main() {
	const int n = 1000000;
	int fh = creat("test.dat", 0600);
	if (fh < 0) {
		cout << "could not create file\n";
		exit(-1);
	}
	int buf[256] = {0};


	for (int i = 0; i < n; i++)
		write(fh, buf, 4);
	close(fh);
}
