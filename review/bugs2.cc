#include <iostream>
using namespace std;
/*
	BUGS2: Revenge of the bugs, pointer edition

 */

int* f() {
	int x = 4;
	return &x;
}

void grabmem() {
	int* p = new int[100]; // allocate a block of memory
}

int main() {
	int a = 5;
	int*p = &a; // p is pointing to a
	cout << "a=" << a << '\n';
	cout << "*p=" << *p << '\n';
	p++; // point to next memory location
	cout << "*p=" << *p << '\n';

	p = f();
	//	cout << "try to print the value computed in f(): " << *p << '\n';

	// call grabmem 100 million times
	for (int i = 0; i < 100000000; i++)
		grabmem();

	p = new int[10];
	delete [] p;
	delete [] p;

}
