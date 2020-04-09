#include <iostream>
using namespace std;

int main(){
	const int SIZE = 342 * 1024 * 1024;
  char* p = new char[SIZE]; // asking for more than we have? No problem!
	// demand-paged virtual memory.

	
	for (int i = 0; i < SIZE; i++)
		p[i] = 0; // actually writing to it? that's another story. This is slow. And ask for too much...
	// CRASH


	delete [] p;
}
