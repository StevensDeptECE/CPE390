//r0     r0      r1
int f(int a, int b);

// d0          d0,      d1  
double g(double a, double b);

//s0         s0       s1     s0 and s1 are d0, so DON'T  USE d0
float g(float a, float b);

//d0              r0      r1
double sum(double[] a, int n);

//        r0       r1
void h(int x, int& byRef);

//        r0       r1
void h(int x, int* ptr);

int main() {
  int x;
	cin >> x;

}
