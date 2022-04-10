#include <iostream>
#include <iomanip>
using namespace std;

double fact(int n);

// choose(n,r) = n! / (r! (n-r)!)  choose(52,6) = 52! / (6! 46!)
double choose(int n, int r) {
  return fact(n) / (fact(r) * fact(n-r));
}

double fact(int n) {
  double prod = 1;
	while (n > 0)
		prod *= n--;
	return prod;
}

double choose_arm(int n, int r);
double choose_fast(int n, int r);

int main() {
	for (int i = 1; i < 30; i++)
		cout << setprecision(15) << i << "\t" << fact(i) << '\n';
	cout << setprecision(15)<< choose(52, 6) << '\n';
	cout << setprecision(15)<< choose_arm(52, 6) << '\n';
	cout << setprecision(15)<< choose_arm(52, 6) << '\n';
	cout << setprecision(15)<< choose_fast(52, 6) << '\n';
}
