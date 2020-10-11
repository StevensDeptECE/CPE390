#include <iostream>
#include <time.h>

using namespace std;
/*
   m=4x n=3         4x3
         j
   1  2  3        1  2  3      2  4  6
   4  5  6    +   4  1  9   =  8  6 15
i  7  8  9       -1  6  2      6 14 11
   9  1 -1        2  2  -3    11  3 -4

 */

double add(const double a[], const double b[], double c[], int m, int n) {
  for (int i = 0; i < m; i++)
		for (int j = 0; j < n; j++)
			c[i*n+j] = a[i*n+j]  + b[i*n+j];
}

double add2(const double a[], const double b[], double c[], int m, int n) {
	for (int j = 0; j < n; j++)
		for (int i = 0; i < m; i++)
			c[i*n+j] = a[i*n+j]  + b[i*n+j];
}

double add3(const double a[], const double b[], double c[], int m, int n) {
	for (int i = 0; i < m*n ; i++)
		c[i] = a[i]  + b[i];
}

/*
   a  b  c     j k m    a*j+b*n+c*r    a*k+b*p+c*s      a*m+b*q+c*t
   d  e  f  *  n p q = 
   g  g  i     r s t

for a good math library (like Intel)
they first transpose the 2nd matrix

               j n r
               k p s
               m q t
 */
double mult(const double a[], const double b[], double c[], int n) {

	for (int k = 0; k < n; k++)
		for (int j = 0; j < n; j++) {
			c[k*n+j] = 0;                      //c(k,j) = 0;
			for (int i = 0; i < n; i++)
				c[k*n+j] += a[k*n+i] * b[i*n+j]; //c(k, j) += a(k, i) * b(i, j);  
		}
}

double mult2(const double a[], const double b[], double c[], int n) {

	for (int k = 0, dest = 0; k < n; k++, dest++)
		for (int j = 0; j < n; j++) {
			double dot = 0;                      //c(k,j) = 0;
			for (int i = 0; i < n; i++)
				dot += a[k*n+i] * b[i*n+j]; //c(k, j) += a(k, i) * b(i, j);

			c[dest] = dot;
		}
}



int main() {
	int m = 2000, n = 2000;
	double* a = new double[m*n];
	double* b = new double[m*n];
	double* c = new double[m*n];
	for (int i = 0; i < m*n; i++) {
		a[i] = i;
		b[i] = i;
	}

	clock_t t0 = clock();
	add(a, b, c, m, n);
	clock_t t1 = clock();
	cout << "add: t=" << (t1-t0) << '\n';

	t0 = clock();
	add2(a, b, c, m, n);
	t1 = clock();
	cout << "add2: t=" << (t1-t0) << '\n';

	t0 = clock();
	add3(a, b, c, m, n);
	t1 = clock();
	cout << "add3: t=" << (t1-t0) << '\n';


	n = 256;
	t0 = clock();
	mult(a, b, c, n);
	t1 = clock();
	cout << "mult: t=" << (t1-t0) << '\n';

	
	t0 = clock();
	mult2(a, b, c, n);
	t1 = clock();
	cout << "mult2: t=" << (t1-t0) << '\n';



	delete [] a;
	delete [] b;
	delete [] c;
}
