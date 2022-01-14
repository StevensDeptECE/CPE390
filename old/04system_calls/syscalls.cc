#include <iostream>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>

using namespace std;

int main() {
	int status = mkdir("tmp", 0744); // try to create a directory with permissions rwxr--r--
	if (status != 0) {
		cerr << "Could not create directory tmp. Perhaps it already exists\n";
	}
	status = chdir("tmp"); // make the current directory the new one we just created
	if (status != 0) {
		cerr << "Could not enter directory tmp, failing\n";
		exit(-1);
	}
	
	int fh = creat("test.dat", 0644); // create a new file with permission rw-r--r--
	if (fh < 0) {
		cerr << "Could not create test.dat, failing\n";
		exit(-1);
	}
	const char msg[] = "testing testing 123\n";
	write(fh, msg, sizeof(msg)-1); // don't write the NUL char
	close(fh);
}
