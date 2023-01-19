#include <iostream>
using namespace std;

constexpr int rows = 3, cols = 4;

void fillMyMatrix(uint64_t m[rows][cols]) {
	uint64_t c = 0;
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			m[i][j] = c++;
		}
	}
}

void printMyMatrix(uint64_t m[rows][cols]) {
	for (int i = 0; i < rows; i++) {
		for (int j = 0; j < cols; j++) {
			cout << m[i][j] << '\t';
		}
		cout << '\n';
	}
}
int main() {
	uint64_t matrix[rows][cols]; // random junk
	printMyMatrix(matrix); // see?
	fillMyMatrix(matrix);             // put numbers in it
	printMyMatrix(matrix); // it works
}
