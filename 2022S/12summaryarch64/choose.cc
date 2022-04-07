#include <iostream>
#include <iomanip>
using namespace std;

double fact(int n) {
  double prod = 1;
	while (n > 0)
		prod *= n--;
	return prod;
}


double choose(int n, int r) {
  return fact(n)/(fact(r) * (fact(n-r)));  
}

double choose_arm(int n, int r);
int main() {
	for (int i= 1; i < 50; i++)
		cout << i << '\t' << fact(i) << '\n';
	cout << setprecision(15) << choose(52, 6) << '\n'; // 52! / (6! (52-6)!)
	// 52 * 51 * 50 * 49 * 48 * 47
	// ---------------------------
	// 6 * 5 * 4 * 3 * 2
  cout << "ARM assembler: " << choose_arm(52, 6) << '\n';
}
