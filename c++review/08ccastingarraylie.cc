#include <iostream>
using namespace std;

void print(int x[], int n) {
	for (int i = 0; i < n; i++)
		cout << x[i] << ' ';
	cout << '\n';
}

int main() {
	float a[3] = {1.0f, 2.5f, 3.2f};
	print((int*)a, 3); // cast, and lie!
}
