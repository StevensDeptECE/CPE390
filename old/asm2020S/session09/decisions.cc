#include <iostream>
using namespace std;

void func();
void func(int x);

void f() {
	for (int i = 2; i < 100; i++)
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

void forloop(int n) {
	for (int i = 0; i < n; i++)
		func();
}

void forloop2(int n) {
	for (int i = 0; i < n; i++)
		func(i);
}

void dowhile(int n) {
	int i = 0;
	do {
		func();
	} while (i++ < 100);
}

int main() {
	f();
	g();
	h(3);
}
