#include <iostream>
using namespace std;


int sum(const int x[], int len);

int main() {
	int x[] = {1, 2, 3, 4, 9};
	int s = sum(x, 5);
	cout << s << '\n';
}
