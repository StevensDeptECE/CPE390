#include <unistd.h>
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

using namespace std;

int main() {
	const int n = 4*1000000;
	int fh = creat("faster.dat", O_WRONLY);
	if (fh < 0) {
		cout << "could not create file\n";
		exit(-1);
	}
	const int BUFSIZE = 4*1024;
	int buf[BUFSIZE] = {0};


	for (int i = 0; i < n/sizeof(buf); i++)
		write(fh, buf, sizeof(buf));
	write(fh, buf, n - n/sizeof(buf)*sizeof(buf));
	close(fh);
}
