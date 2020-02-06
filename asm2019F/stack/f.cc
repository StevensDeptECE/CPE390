void g();
void f() {
	g();
}

int f(int a, int b, int c, int d) {
	return a + b + c + d;
}

int f(int a, int b, int c, int d, int e) {
	return a + b + c + d + e;
}

//iterative factorial
int fact(int n) {
	int prod = 1;
	for (; n > 1; n--)
		prod *= n;
	return prod;
}

//recursive factorial
int fact2(int n) {
	if (n <= 1)
		return 1;
	return n * fact(n-1);
}
