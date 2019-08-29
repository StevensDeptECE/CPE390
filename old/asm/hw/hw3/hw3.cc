#include <iostream>
using namespace std;
/*
	Write the following functions in assembler
  count(n) should just count from 1 to n, returning nothing
	countDown(n) should count from n down to  0, returning nothing
	sum(a,b) should add up the numbers a+ (a+1) + (a+2) + ... + b and return
     example: sum(3,5) = 12
	fact(n) should count from 1 to n and multiply all: 1*2*3*...*n
     example: fact(5) = 120
 */
extern void count(int n); // _Z5counti
extern void countDown(int n); // _Z9countDowni
extern int sum(int a, int b);
extern int fact(int n);

int main() {
	count(10); // count from 1 to 10
	countDown(10); // count from 10 down to 0
	cout << sum(3,5) << '\n';
	for (int i = 0; i < 10; i++)
		cout << fact(5) << '\n';
}
// 0! = 1, 1! = 1, 2! = 2, 3! = 6, 4! = 24
