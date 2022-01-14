#include <iostream>
#include <fstream>
using namespace std;
/*
	make my code faster!
You can try sprintf https://linux.die.net/man/3/sprintf
  sprintf(ptr, "%d", i);

itoa might be faster: 
http://www.cplusplus.com/reference/cstdlib/itoa/

idea: write to a buffer, and print an even multiple of 4k (4096) because
that's what makes your disk happy.

Fastest code gets a virtual cookie!
 */
int main() {
	ofstream f("test.dat");
	for (int i = 0; i < 5000000; i++)
		f << i;
}
