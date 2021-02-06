#include <iostream>
using namespace std;
/*
hint:
 your function should look like this
 int sum(int a, int b) {
 }
*/

uint64_t fact(int num) {
  uint64_t total = 1; // needs to be uint64
  for (int i = 1; i <= num; i++) {
    total *= i; // total = total * uint64_t(i)
  }
  return total;
}

int main() {
	cout << sum(3, 6); // compute the sum 3 + 4 + 5 + 6
	cout << sum(5, 100); // compute the sum 5+6+7+...+100
  cout << fact(5) << '\n'; //120
  cout << fact(15) << '\n'; //1.308e12
  cout << fact(25) << '\n'; //1.551e25
  //cout << fact(50) << '\n';
  cout << sumOfSquares(10) << '\n'; // print 1*1 + 2*2 + 3*3 + ... + 10*10
  cout << sumOfSquares(11) << '\n'; // print 1*1 + 2*2 + 3*3 + ... + 10*10+11*11
}
