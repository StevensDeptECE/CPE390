#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main(int argc, char* argv[]) {
	const int n = atoi(argv[1]);
	float sum1 = 0; // forwards
	float sum2 = 0; // backwards
	// 1/(1*1) + 1/(2*2) + 1/(3*3) + ... up to 1/(n*n)

	for (int i = 0; i < n; i++)
		cout << i;


	// compute the sum forwards and backwards
	cout << 6*sqrt(sum1) << '\n';
	cout << 6*sqrt(sum1) << '\n';

}
