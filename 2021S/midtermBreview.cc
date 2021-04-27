int sumMult3(int a, int b) {
	int sum = 0;
	for (int i = 1; i <= a+b; i += 3)
		sum += i;
	return sum;
}


int sumPower2(int a, int b) {
	int sum = 0;
	for (int i = 1; i <= a*b; i *= 2)
		sum += i;
	return sum;
}


void sumSquares(int a[], int b[], int len) {
	int sum  = 0;
  for (int i = 0; i < len; i++)
		sum += a[i]*a[i]*b[i] + b[i]*b[i]*a[i];
	for (int i = 0; i < len; i++) {
		a[i]  *= sum;
		b[i]  *= sum;
	}
}

void sumSquares2(int a[], int b[], int len) {
	int sum  = 0;
  for (int i = 0; i < len; i++) {
		int t = a[i] + b[i];
		sum += t*t;
	}
	for (int i = 0; i < len; i++) {
		a[i]  *= sum;
		b[i]  *= sum;
	}
}
