#include <iostream>

using namespace std;

int sum(int a, int b);

int sum(const int x[], int len);

int main() {
  cout << sum(2, 4) << '\n'; // 2+3+4
	int x[] = { 3, 5, 9, 2, 4};
	cout << sum(x, sizeof(x)/sizeof(int));

}
