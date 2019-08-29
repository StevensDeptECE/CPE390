#include <iostream>
using namespace std;

extern int sum(int x[], int n);
int main() {
	int x[] = {6, 5, 4, 3, 2};
	cout << sum(x, 5) << '\n';
}
