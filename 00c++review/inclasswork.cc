/*
	1. 3n+1, Collatz conjecture

	   pick n (any positive integer)  (Example 5)
		 if n is odd, multiply by 3 and add 1
		 if n is even, divide by 2

		 repeat until n reaches 1

		 5 16 8 4 2 1
		 17 52 26 13 40 20 10 5 ...
		 27


  2. multiplication table

	read in n (5)

	write out an nxn table

	1  2  3  4  5
  2  4  6  8 10
  3  6  9 12 15
  4  8 12 16 20
  5 10 15 20 25
*/

void collatz1(int n) {
	while (n > 1) {
		if (n % 2 == 0)
			n = n / 2;
		else
			n = 3 * n + 1;
		cout << n << ' ';
	}
}

void collatz2(int n) {
  cout << n << ' ';
	if (n == 1)
		return;
	if (n % 2 == 0)
		collatz2(n/2);
	else
		collatz2(3*n+1);
}

void collatz3(int n) {
	for ( ; n > 1; n = n % 2 == 0 ? n / 2 : 3 * n + 1)
		cout << n << ' ';
}



int main() {
	int n;
	cin >> n;
	collatz(n);
}
