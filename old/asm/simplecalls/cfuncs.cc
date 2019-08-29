#include <iostream>
using namespace std;

extern "C" {
	void f() {

		cout << "hello";
	}
}

void g() {
	cout << "oh no! c++!";
}

int h(int a, int b) {
	return a*a + b*b;
}
	
