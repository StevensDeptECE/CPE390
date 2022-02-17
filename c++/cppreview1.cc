int intvariables() {
  	
}

void loopbug1(int n) {
	for (uint32_t i = n; i >= 0; i--)
		cout << i;
}

void loopbug2(int n) {
	for (uint8_t i = 0; i < 1000; i++)
		cout << i;
}

void loopbug3(int n) {
	for (uint8_t i = 1; i <= 1000; i++)
		cout << i;
}

void integerbugs() {
	

}


double floatvariables() {
	
}

int loops() {

}

void ifstatements() {

}

void nestedloops(int n) {
	for (int i = 1; i <= n; i++) {
		for (int j = 1; j <= n; j++)
			cout << i*j << '\t';
		cout << '\n';
	}
}

/*
	A recursive function calls itself, and has a way to stop the recursion
	(an exit condition)
	This kind of function where the call to itself is the last thing in the
	function one is called "tail recursion"
	Compilers can recognize tail recursion and automatically optimize this into
	a loop internally.
 */
int fact(int n) {
	if (n <= 0)
		return 1;
	return n * fact(n-1);
}

/*
	Mutual recursion is when two functions call each other.
	Of course there also has to be a way out.
	Can you figure out what this one does?
 */

int mutualB(int n); // this prototype is necessary. Someone has to go first!
// neither can be written first because both call each other.

int mutualA(int n) {
	return mutualb(n-2) + 1;
}

int mutualB(int n) {
	if (n < 3)
		return 6;
	return mutualA(n/2) * 2 + 3;
}

/*
	Fibonacci is an exponential explosion because it calls itself twice.
	That means fibo(n) = 2 times as much work as fibo(n-1)
	cost is 2**n which grows very fast
	2**10 = 1024
	2**20 = 1024*1024 = 1M
	2**30 = 1024*1024*1024 = 1G
	2**40 = 1 trillion
 */
uint64_t fibo(int n) {
  if (n <= 2)
		return 1;
	return fibo(n-1) + fibo(n-2);
}

void recursion() {
  cout << fact(10) << '\n';
	cout << mutualA(23) << '\n';
	for (int i = 1; i <= 15; i++)
		cout << fibo(i) << ' ';
	cout << '\n';
}
