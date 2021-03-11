#include <iostream>
using namespace std;

int fact(int);
int choose(int n, int r); // n! / (r!(n-r)!)
// choose(52, 6) = 52! / (6!46!) = more efficient 52*51*50*49*48*47/(6*5*4*3*2)
int sumBinomial(int n); // choose(n,0)+choose(n,1)+...+choose(n,n)

int main() {
	cout << fact(6)<< '\n';
	cout << choose(5, 3) << '\n'; // 5!/(3!2!) = 120/(6*2) = 10
	cout << sumBinomial(3) << '\n';
	// choose(3,0)+choose(3,1)+choose(3,2)+choose(3,3) = 1+3+3+1 = 8
	// 1 4 6 4 1 = 16
	return 0;
}
							 
	
