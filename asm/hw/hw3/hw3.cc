#include <iostream>
using namespace std;
/*
	Write the following functions in assembler
	sum(a,b) should add up the numbers a+ (a+1) + (a+2) + ... + b and return
     example: sum(3,5) = 12
	fact(n) should count from 1 to n and multiply all: 1*2*3*...*n
     example: fact(5) = 120
 */
extern int sum(int a, int b);
extern int fact(int n);

int main() {
	cout << sum(3,5) << '\n';
	for (int i = 0; i < 10; i++)
		cout << fact(5) << '\n';
}
// 0! = 1, 1! = 1, 2! = 2, 3! = 6, 4! = 24
