int a = 1.5 * 3; // first 3--> 3.0 1.5*3.0=4.5  --> 4
uint32_t b = 7/2; // 3
double x = 3 / 2;
uint8_t c = 255; // 0..255
c++; // 0

int8_t c2 = 127; // -128..-1 0..127 
c2++; // -128!
// 11111111
// +0000001
// --------
//100000000

double sum = 0;
for (int i = 0; i < 10; i++)
	sum += 0.1;
bool e = sum == 1.0; // false 0
bool e2 = sum != 1.0; // true 1

int sum = 0;
for (int i = 3; i < 15; i+= 4)   // 3 + 7 + 11 = 21
	sum += i;

a = 9;
for (int i = 10; i < 0; i++)
	sum += i;

uint32_t f = 3 + 4* 5;

double x = 1 / 0; // program terminates (hardware trap)
double g = 1.0 / 0.0; // infinity
double g2 = -5.0 / 0.0; // -infinity
double h = 0.0 / 0.0; // NaN
uint32_t m = 4 % 3 + 5 % 3; // 1 + 2

double f1 = sin(g); // sin(inf) = Nan
double f2 = sqrt(g); // sqrt(inf) = INF
double f3 = sqrt(g2); // sqrt(-inf) = NaN
double f4 = g + g2; // +inf -inf = NaN

// this is not on the retest
double z = 10/g;
double z2 = 10/g2; // -0


if (z == z2) {

 }

int sum(int a[], int n) {
  for (int i = n; i > 0; i--)
		s += a[i];  // a[n] is out of bounds


