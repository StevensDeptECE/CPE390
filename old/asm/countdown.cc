#include <iostream>
using namespace std;
void f();
void countdown(int n) {
	do {
		f();
		n--;
	} while (n > 0);
}
