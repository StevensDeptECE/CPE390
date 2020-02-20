#include <iostream>
using namespace std;

void func();
void func(int x);

void f() {
	for (int i = 0; i < 100; i++)
		func();
}

void g() {
	int i = 0;
	while (i < 100) {
		func(i);
		i++;
	}
}

void g2() {
	for (int i = 0; i < 1000000; i++) {
		func(i);
	}
}

void h(int x) {
	if (x > 3) {
		cout << "x is greater";
	} else {
		cout << "x is NOT greater";
	}
}

int main() {
	f();
	g();
	h(3);
}
