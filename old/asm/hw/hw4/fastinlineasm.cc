#include "Polynomial.hh"
using namespace std;

extern int fasteval(Polynomial* p, int n);

int main()  {
	double c1[] = {1, 2, 1};
	Polynomial p(c1, 2);
	//	cout << p << '\n';

	const int n = 1000000000;
	cout << fasteval(&p, n);
}
