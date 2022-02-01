#include <iostream>
#include <cstdint>
#include <cmath>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>

using namespace std;
/*
	This code is designed to show all the instructions we will be using 
	in the course.

	The C++ optimizer will eliminate instructions if it can figure out
	the result, so notice that in order to show optimized code we use 
	functions with parameters. In this way, the compiler does not know
	the values and must generate the code for each function.

	For example, if you write 2+3 in C++, the compiler will simply evaluate 5
	no code is generated.

	to see the code generated, use the command:

	g++ -O3 -S all_instructions.cc


	TODO: there is a directive to inject C++ into the assembler, look it up
	g++ -O3 -f???  -S all_instructions.cc

*/

// f1 series: integer operators (32 bits)
int f1_1(int x, int y) {
	return x + y;
}

int f1_2(int x, int y) {
	return x - y;
}

int f1_3(int x, int y) {
	return x * y;
}

int f1_4(int x, int y) {
	return x / y;
}

int f1_5(int x, int y) {
	return x % y;
}

int f1_6(int x) {
	return -x;
}

int f1_7(int a, int b) {
	return a & b; // bitwise and
}

int f1_8(int a, int b) {
	return a | b; // bitwise or
}

int f1_9(int a, int b) {
	return a ^ b; // bitwise xor
}

int f1_10(int a) {
	return ~a; // bitwise and
}

int f1_11(int a) {
	return a << 7; // left shift (signed)
}

int f1_12(int a) {
	return a >> 7; // right shift (signed)
}

uint32_t f1_13(uint32_t a) {
	return a << 7; // left shift (signed)
}

/*
	gcc will recognize that shifting left by k, ored  with shifting 
	right by word size-k is actually a rotation. 
	This will only work with the optimizer on
*/
int f1_14(int a, int b) {
	return (a << 7) | (a >> 25); // rotation left by 7 = rotate right by 25
}



// f2 series: 64-bit unsigned arithmetic
uint64_t f2_1(uint64_t a, uint64_t b) {
	return a + b;
}

uint64_t f2_2(uint64_t a, uint64_t b) {
	return a - b;
}

uint64_t f2_3(uint64_t a, uint64_t b) {
	return a * b;
}

uint64_t f2_4(uint64_t a, uint64_t b) {
	return a / b;
}

uint64_t f2_5(uint64_t a, uint64_t b) {
	return a % b;
}

uint64_t f2_6(uint64_t a) {
	return -a;
}


uint64_t f2_7(uint64_t a, uint64_t b) {
	return a & b; // bitwise and
}

uint64_t f2_8(uint64_t a, uint64_t b) {
	return a | b; // bitwise or
}

uint64_t f2_9(uint64_t a, uint64_t b) {
	return a ^ b; // bitwise xor
}

uint64_t f2_10(uint64_t a) {
	return ~a; // bitwise and
}

uint64_t f2_11(uint64_t a) {
	return a << 7; // left shift (signed)
}

uint64_t f2_12(uint64_t a) {
	return a >> 7; // right shift (signed)
}

uint64_t f2_13(uint64_t a) {
	return a << 7; // left shift (signed)
}

/*
	gcc will recognize that shifting left by k, ored  with shifting 
	right by word size-k is actually a rotation. 
	This will only work with the optimizer on
*/
uint64_t f2_14(uint64_t a, uint64_t b) {
	return (a << 7) | (a >> 25); // rotation left by 7 = rotate right by 25
}




// f3 series: double precision floating point
double f3_1(double a, double y) {
	return a + y;
}

double f3_2(double a, double b) {
	return a - b;
}

double f3_3(double a, double b) {
	return a * b;
}

double f3_4(double a, double b) {
	return a / b;
}

double f3_5(double a) {
	return -a;
}

double f3_6(double a) {
	return sqrt(a);
}

double f3_7(double a) {
	return sin(a);
}

double f3_8(double a) {
	return cos(a);
}

double f3_9(double a, double b) {
	return sqrt(a*a + b*b);
}

double f3_10(double a, double b) {
	return pow(a,b);
}

double f3_11(double a) {
	return exp(a);
}

double f3_12(double a) {
	return log(a);
}

double f3_13(double a) {
	return abs(a);
}

double f3_14(double a, double b) {
	return max(a,b);
}


// f4 series: single precision floating point
float f4_1(float a, float y) {
	return a + y;
}

float f4_2(float a, float b) {
	return a - b;
}

float f4_3(float a, float b) {
	return a * b;
}

float f4_4(float a, float b) {
	return a / b;
}

// f5: double/integer conversion
int f5_1(double a) {
	return (int)a;
}

int f5_2(double a) {
	return (int)round(a);
}

uint64_t f5_3(double a) {
	return (uint64_t)round(a);
}

// type promotion (no cast necessary)
double f5_4(int a) {
	return a + 0.5;
}

// type promotion (no cast necessary)
double f5_5(int a) {
	return a;
}

// f6: float/integer conversion
int f6_1(float a) {
	return (int)a;
}

int f6_2(float a) {
	return (int)round(a);
}

uint64_t f6_3(float a) {
	return (uint64_t)round(a);
}

// type promotion (no cast necessary)
float f6_4(int a) {
	return a + 0.5;
}

// type promotion (no cast necessary)
float f6_5(int a) {
	return a;
}



//f7: passing parameters (integer)

// note that this should be optimized from multiplication to a shift
int f7_1(int a) {
	return 3*a;
}

int f7_2(int a, int b) {
	return 5 * a + 8 * b;
}

int f7_3(int a, int b, int c) {
	return a + b + c;
}

int f7_4(int a, int b, int c, int d) {
	return a + b + c + d;
}

int f7_5(int a, int b, int c, int d, int e) {
	return a + b + c + d + e;
}

//f8: passing parameters (double)

double f8_1(double a) {
	return 3*a;
}

double f8_2(double a, double b) {
	return 5 * a + 8 * b;
}

double f8_3(double a, double b, double c) {
	return a + b + c;
}

double f8_4(double a, double b, double c, double d) {
	return a + b + c + d;
}

double f8_5(double a, double b, double c, double d, double e) {
	return a + b + c + d + e;
}


// combination of pointer, integer, double and float parameters
double f8_6(const double* a, double b, uint64_t c, float d, double e) {
	return a[3] + b + c + d + e;
}


// f9: array manipulation

int f9_sum(const int arr[], int len) {
	int s = 0;
	for (int i = 0; i < len; i++)
		s += arr[i];
	return s;
}

int f9_sum(const char s[], int len) {
	int sum = 0;
	for (int i = 0; i < len; i++)
		sum += s[i];
	return sum;
}

void f9_demean(double arr[], int len) {
	double mean = 0;
	for (int i = 0; i < len; i++)
		mean += arr[i];
	mean /= len;
	for (int i = 0; i < len; i++)
		arr[i] -= mean;
}

// f10: pass by reference
void f10_1(const double arr[], uint32_t len, double& mean,
					 double & min, double & max) {
	double sum = arr[0];
	double minVal = arr[0], maxVal = arr[0];
	for (uint32_t i = 1; i < len; i++) {
		sum += arr[i];
		if (arr[i] < minVal)
			minVal = arr[i];
		else if (arr[i] > maxVal)
			maxVal = arr[i];
	}
	mean = sum / len;
	min = minVal;
	max = maxVal;
}

//f11: system calls use software traps
void f11() {
	int fh = open("test.dat", O_WRONLY);
	const char msg[] = "testing";
	int bytes_written = write(fh, msg, sizeof(msg));
	cout << "wrote " << bytes_written << '\n';
	close(fh);
	mkdir("temp", 0700); // create a directory
}

//f12 how statements are implemented
void f12_while(int n) {
	while (n > 0) {
	  cout << n;
		n--;
	}
}

void f12_for(int n) {
	for (int i = 0; i < n; i++) {
	  cout << i;
	}
}

// the optimizer will eliminate this loop since there is an analytical equation
int f12_for_optimized1(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++) {  // this is n(n+1)/2
	  sum += i;
	}
	return sum;
}

// the optimizer will eliminate this loop since it is not used
int f12_for_optimized2(int n) {
	for (int i = 1; i <= n; i++) {
	}
	return 5;
}

/* the optimizer is not smart enough to optimize this stupid code. can you?
  1 2 3 = 6 
  2 4 6 = 12
	3 6 9 = 18
	total = 36
*/
int f12_nested_for(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++) {
		for (int j = 1; j <= n; j++) {
			sum += i*j;
		}
	}
	return sum;
}

class vec3d {
public:
	double x, y, z;
	// this constructor is inline so code is only generated when used
	vec3d(double x, double y, double z) : x(x), y(y), z(z) {}
	vec3d add(vec3d b) const;
	friend vec3d operator +(vec3d a, vec3d b) {
		return vec3d(a.x+b.x,a.y+b.y,a.z+b.z);
	}
	double mag() const {
		return sqrt(x*x+y*y+z*z);
	}
	friend double mag(vec3d v) { return sqrt(v.x*v.x+v.y*v.y+v.z*v.z); }
	friend ostream& operator <<(ostream& s, const vec3d& v) {
		return s << v.x << ',' << v.y << ',' << v.z;
	}
};

int main() {
	double x, y, z;
	// read in from keyboard so optimizer does not know what is in x,y,z
	cin >> x >> y >> z;
	vec3d v1(x,y,z); // create an object
	cout << v1.mag() << '\n';
	cout << mag(v1) << '\n';
	vec3d v2(x+1,y+2,z-1); // create an object
	cout << v1.add(v2) << '\n';
}

vec3d vec3d::add(vec3d b) const {
	return vec3d(x+b.x, y + b.y, z + b.z);
}
