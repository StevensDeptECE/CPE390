#include <iostream>
using namespace std;

void f();
void f(int);
void f(int,int);
void f(int,int,int);
void f(int,int,int,int);
void f(int,int,int,int,int);
void g(int x[]);
void h(int x[]);

void bench() {
	int* p = new int[40000000];
	g(p);
	clock_t t0 = clock();
	g(p);
	clock_t t1 = clock();
	cout << "g: " << (t1-t0) << '\n';
	
	t0 = clock();
	h(p);
	t1 = clock();
	cout << "h: " << (t1-t0) << '\n';
	delete[] p;
}

int main() {
	f();
	f(3);
	f(3,4);
	f(3,4,5);
	f(3,4,5,6);
	f(3, 4, 5, 6, 7);

	bench();
}
