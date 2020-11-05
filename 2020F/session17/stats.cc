#include <iostream>
using namespace std;
//                     r0       r1          r2        r3              lr
void stats(const double x[], int n, double& mean, double& max, double& min) {
  double sum = 0;
	max = min = x[0];
	for (int i = 0; i < n; i++) {
		sum += x[i];
  	if (max < x[i]) {
			max = x[i];
		} else if (min > x[i]) {
			min = x[i];
		}
	}
	mean = sum / n;
}

int main() {
	double a[] = {4, 3, 2, 1};
	double mean, max, min;
	stats(a, 4, mean, max, min);

	cout << mean << " max=" << max << " min=" << min << '\n';
}
