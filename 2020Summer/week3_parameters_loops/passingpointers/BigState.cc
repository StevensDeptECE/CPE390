#include <iostream>
#include <cstdint>
using namespace std;

class Big {
public:
  constexpr static uint32_t size = 8;
	double a[size];
	Big(double v) {
    for (int i = 0; i < size; i++)
      a[i] = v++;
  }
	friend Big operator +(Big a, Big b) {
		Big ans;
    for (int i = 0; i < size; i++)
      ans.a[i] = a.a[i] + b.a[i];
    return ans;
	}
	friend Big& operator +=(Big& a, const Big& b) {
    for (int i = 0; i < size; i++)
      a.a[i] += b.a[i];
		return a;
	}
	friend ostream& operator<<(ostream& s, const Big& v) {
    for (int i = 0; i < size; i++)
      s << v.a[i] << ' ';
    return s << '\n';
	}
private:
  Big() {}
};

int main() {
  Big a(9);
	Big b(3);
	const uint32_t n = 1000000000;
	clock_t t0 = clock();
	for (int i = 0; i < n; i++) {
		a = a + b;
	}
	clock_t t1 = clock();
	cout << "Elapsed: " << (t1-t0) << '\n';

	t0 = clock();
	for (int i = 0; i < n; i++)
		a += b;
	t1 = clock();
	cout << "Elapsed: " << (t1-t0) << '\n';

	cout << a << '\n';	

}
