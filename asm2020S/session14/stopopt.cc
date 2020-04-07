#include <iostream>
using namespace std;

void f(int n) {
	for (int i = 0; i < n; i++)
		cout << i;
}

void g(int n) {
	int i = 0;
	do {
		// this happens once!

	} while (i < n);

}
