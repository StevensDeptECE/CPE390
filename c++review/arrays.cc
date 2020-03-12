#include <iostream>
using namespace std;
int x; // globals are initialized to zero (but initialize anyway)

int main() {
	cout << "Arrays: everyone wants one.\n";
	int a1,a2,a3,a4;
	int a[4]; // what's in here? (random garbage)
	int b[4] = {3}; // what's in here?  b[0] = 3  b[1] = 0 b[2] = 0 b[3] = 0

	for (int i = 0; i < 4; i++)
		cout << a[i] << ' ';
	cout << '\n';

	for (int i = 0; i < 4; i++)
		cout << b[i] << ' ';
	cout << '\n';

	for (int i = 0; i < 5000; i++)
		cout << b[i] << ' ';
}
