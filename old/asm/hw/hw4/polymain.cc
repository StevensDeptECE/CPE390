#include "Polynomial.hh"
using namespace std;

int main()  {
	double c1[] = {1, 2, 1};
	Polynomial p(c1, 2);
	//	cout << p << '\n';

	const int n = 1000000000;
	double sum = 0;
	for (int i = 0; i < n; i++)
		sum += p.eval(2.0);
	cout << sum << '\n';
}
