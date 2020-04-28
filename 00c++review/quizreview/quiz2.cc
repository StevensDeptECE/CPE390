double f(double x) { // 1.23456789012345e+200
	double y = x*x;
	x = 19.5;
	return y;
}


int add(int x[], int len) {
	int sum = 0;
	for (int i = 0; i < len; i++) {
		sum = sum + x[i];   // sum += x[i]
	}
	
	return sum;
}


double prod(int x[], int len) {
	double product = 1;
	for (int i = 0; i < len; i++) {
		product = product * x[i];  //product *= x[i]
	}
	return product;
}

#include <cmath>
void pow(int n) {
	int p = 1;
	for (int i = 0; i <= n; i++, p *= 2) {
		cout << p << '\n';
	}


}




int main() {
	int a = 2;
	cout << f(a) << '\n';
	cout << a << '\n';
	//         b[0]    b[1]         b[2]    b[3]   b[4]   
	int b[5] = {5,      4,          1};
	g(b, 5);
  int16_t s = -32767;
	cout << s - 2;
}
