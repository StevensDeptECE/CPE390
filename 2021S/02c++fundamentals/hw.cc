#include <iostream>
using namespace std;
/*
  Pledge goes here
	Author: your name here
	cite: explain any help you got


hint:
 your function should look like this
 int sum(int a, int b) {
 }

 4 + 6 = 10

 100 4 +
 110 6 
====
 010 = 2


*/


uint64_t fact(int num) {
  uint64_t total = 1; // needs to be uint64
  for (int i = 1; i <= num; i++) {
    total *= i; // total = total * uint64_t(i)
  }
  return total;
}

int main() {
	cout << sum(3, 6) << '\n'; // compute the sum 3 + 4 + 5 + 6
	cout << sum(5, 100) << '\n'; // compute the sum 5+6+7+...+100
  cout << fact(5) << '\n'; //120
	for (int i = 1; i <= 25; i++)
		cout << i << ": " << fact(i) << '\n';
  //cout << fact(50) << '\n';
  cout << sumOfSquares(10) << '\n'; // compute 1*1 + 2*2 + 3*3 + ... + 10*10
  cout << sumOfSquares(11) << '\n'; // compute 1*1 + 2*2 + 3*3 + ... + 10*10+11*11
}
