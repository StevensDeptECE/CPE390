class A {
public:
	int x;
	double y;
}
int main() {
	A a1;
	a1.x = 5;
	a1.y = 2.5;

	A* p = &a1; // p points to A
	(*p).x = 6; // a1.x = 6
	p->x = 7;   // a1.x = 7

	/* example of optimization
	int SECONDS_PER_YEAR = 365 * 24 * 60 * 60; // this is already optimized


	int sum = 0;
	for (int i = 1; i <= n; i++)
		sum += i;

	int sum = n * (n+1)/2;
	*/
}

	
