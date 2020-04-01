#include <iostream>
#include <time.h>
using namespace std;

void f(const int x[], int n);
void g(const int x[], int n);

/*
  0x3ffff0010:   x  x  x  x  x  x  x  x
  0x3ffff0018:   x  x  x  x  x  x  x  x
  0x3ffff0020:   x  x  x  x  x  x  x  x




 */
int main() {
	const int n = 40000000;
	int* p = new int[n];
	f(p, 10000);
	clock_t t0 = clock();
	f(p, n);
	clock_t t1 = clock();
	cout << "f elapsed: " << (t1-t0) << '\n';
														
	t0 = clock();
	g(p, n);
	t1 = clock();
	cout << "g elapsed: " << (t1-t0) << '\n';
	delete [] p;
}
