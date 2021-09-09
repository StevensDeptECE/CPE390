#include <iostream>
using namespace std;

int fact(int);
int choose(int,int);
int sumBinomials(int);

int main() {
	cout << fact(5) << '\n';
	cout << fact(4) << '\n';

	cout << choose(5, 3) << '\n'; // choose(n,r) = n!/(r! (n-r)!) = 5!/(3!2!)

	cout << sumBinomials(5) << '\n'; // choose(5,0)+choose(5,1)+...+ choose(5,5)
}
