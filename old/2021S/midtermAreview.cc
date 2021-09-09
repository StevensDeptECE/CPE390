int sumOddProducts(int a, int b) {
	int sum = 0;
	for (int i = 1; i <= a*b; i+=2) // 1 + 2 + 3 + ... + n = n(n+1)/2
		sum += i;
	return sum; 
}

void sumProdSquares(int[] a, int[]b, int len) {
	int sum = 0;
	for (int i = 0; i < len; i++)
		sum += a[i]*a[i] + b[i]*b[i];
	for (int i = 0; i < len; i++) {
		a[i] -= sum;
		b[i] -= sum;
	}
	
}

void sumProdSquares2(int[] a, int[]b, int len) {
	int sum = 0;
	for (int i = 0; i < len; i++)
		sum += a[i]*a[i]* b[i] +b[i] *b[i]*a[i];
	for (int i = 0; i < len; i++) {
		a[i] *= sum;
		b[i] *= sum;
	}
	
}
