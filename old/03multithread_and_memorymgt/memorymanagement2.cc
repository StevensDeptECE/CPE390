#include <iostream>
#include <unistd.h>
using namespace std;

int main(){
	const int SIZE = 500 * 1024 * 1024;
  char* p = new char[SIZE]; // asking for more than we have? No problem!
	// demand-paged virtual memory.

	while (true) {
	
		for (int i = 0; i < SIZE; i+= 65536)
			p[i] = 0; // only touching every 64k, most pages NOT LOADED!
    sleep(2);
	}

	delete [] p;
}
