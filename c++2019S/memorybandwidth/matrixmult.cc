#include <iostream>
using namespace std;







constexpr int N = 3;
/*
	1, 2, 3           2, 1, 0      x
	2, -1, 0   *      -3, 1, 1 = 
	1, 1, -1          1, 1, -1

*/


void mult(double c[N][N], a[N][N], b[N][N]) {
	for (int k = 0; k < N; k++) {
		for (int j = 0; j < N; j++) {
			c[k][j] = 0;
			for (i = 0; i < N; i++)
				c[k][j] += a[k][i] * b[i][j];
		}
	}
}

int main() {
	//constexpr int N = 32;
	//	double a[N][N] = {5};
	//double b[N][N] = {3};
	double a[N][N] = { {1, 2, 3},
										 {2, -1, 0},
										 {1, 1, -1}
	};
	double b[N][N] = { {2, 1, 0},
										 {-3, 1, 1},
										 {1, 1, -1}
	};

	mult(c, a, b);
  for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++)
			cout << c[i][j] << '\t';
	
