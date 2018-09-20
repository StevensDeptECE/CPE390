#include "Polynomial.hh"
using namespace std;

int main()  {
	double c1[] = {1, 2, 1};
	Polynomial p(c1, 2);
	cout << p << '\n';
	cout << "p(2)=" << p.eval(2.0);
}
