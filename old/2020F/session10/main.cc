#include <iostream>

using namespace std;

void readingfrommemory(int a[], int n);
void add1ToString(char s[]);
int main() {
	//	int x[] = { 7, 1, 6, 5};
	constexpr int n = 40000000;
	int* x = new int[n];
	clock_t t0 = clock();
	readingfrommemory(x, n);
	clock_t t1 = clock();
	cout << (t1-t0)*1e-6 << '\n';
	delete [] x;

	char s[] = "test123";
	add1ToString(s);
}
