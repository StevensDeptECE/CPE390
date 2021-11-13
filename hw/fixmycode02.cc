#include <iostream>

using namespace std;

float sumInverses(int n) {
	float sum = 0;
	for (int i = 0; i <= n; i++)
		sum += 1/i;
	return sum;
}

double mean(const double x[], int n) {
	double sum = 0;
	for (int i = 0; i <= n; i++)
		sum += x[i];
	return sum / n;
}

void count(float end) {
	for (float x = 0; x != end; x += 0.1)
		cout << x << ' ';
	cout << '\n';
}

int main() {
	cout << sumInverses(100) << '\n'; // should be 5.18...
	double a[] = {6, 5, 4};
	double b[] = {9, 1, 9, 1};
	cout << mean(a, 3) << '\n';
	cout << mean(b, 4) << '\n';
	count(10);
}
