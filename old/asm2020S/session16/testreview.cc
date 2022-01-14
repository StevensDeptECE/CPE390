#include <iostream>
using namespace std;
int prod(int a[], int size);
int sum(int a[], int size);

#if 0
int prod(int a[], int size) {
  int p = 1;
	for (int i = 0; i < size; i++)
		p *= a[i];
  return p;
}

int sum(int a[], int size) {
  int s = 0;
	for (int i = 0; i < size; i++)
		s += a[i];
  return s;
}
#endif

int main() {
	int x[] = {6, 4, 2, 1, 3};
	cout << sum(x, 0) << '\n';
	cout << prod(x, 5) << '\n';
