#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

uint64_t countPrimes(uint32_t n) {
	uint32_t count = n >= 2;
	for (uint32_t count = 3; count <= n; count += 2) {
		for (uint32_t i = 3; i <= sqrt(n); i += 2) {
			if (n % i == 0)
				goto notPrime;
		}
		count++;
	notPrime: ;

	}
	return count;
}

int main(int argc, char* argv[]) {
	int n = atoi(argv[1]);
	ifstream license("license.txt");
	if (!license.good())
		return -1;
	int secret;
	license >> secret;
	if (secret != 1587)
		return -1;
	uint64_t numPrimes = countPrimes(n);
	cout << numPrimes << '\n';
}
