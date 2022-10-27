#include <iostream>
using namespace std;

/*
	2 errors: uninitialized variables, and going out of bounds

 */
int main() {
  uint32_t a;     // creates 1 int (random garbage)  0 ..4.2billion-1
	int b[10]; // create 10 integers in a single block of memory (random garbage)
	cout << a << '\n';
	a = 19;
	cout << a << '\n';

	for (int i = 0; i < 100; i++)
		cout << b[i] << " "; // printing values out of bounds! Ouch
	cout << '\n';

	
}
