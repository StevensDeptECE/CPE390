#include <iostream>
using namespace std;

int x;
static int y;

int prod(int a, int b) {
	int x;
	int prod = 1;
	for ( ; a <= b; a++)
		prod *= a;
	return prod;
}



int main() {
	for (int i = 20; i <= 50; i += 2)
		cout << i << ' ';
	cout << '\n';

	for (int i = 100; i > 0; i /= 3) { // 100 33 11 3 1
		cout << i << ' ';
	}
	cout << '\n';

	cout << prod(4,7);
	
}
