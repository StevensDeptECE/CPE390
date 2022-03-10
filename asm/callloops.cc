#include <iostream>
using namespace std;

uint64_t f9_sum(const int a[], int len);
uint64_t f9_sum2(const int a[], int len);

int main() {
	int x[] = {1, 2, 3, 4, 9};
	cout << f9_sum(x, 5) << '\n';
	//	cout << f9_sum2(x, 5) << '\n';
}
