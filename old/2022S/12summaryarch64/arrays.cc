#include <iostream>

using namespace std;

void addone(int a[], int len);
void visitcolumns(int a[3][4], int len);

int main() {
	int a[] = {1, 2, 3, 4, 5};
	addone(a, 5);

	int b[3][4] = { // row-major order
		{1, 2, 3, 4},
		{2, 3, 4, 5},
		{3, 1, -1, 19}
	};
	visitcolumns(b);
	for (int j = 0; j < 4; j++) {
		for (int i = 0; i < 3; i++) {
			cout << b[i][j] << ' ';
		}
		cout << '\n';
	}
}
