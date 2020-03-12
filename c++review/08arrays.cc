double mean(int a[], int n);

int main() {
	//       a[0]  a[1]  a[2]
	int a[] = {1,   2,    3};
	int b[10] = {5, 4, 3}; // automatically appends 0
	int c[100] = {0}; // sets all to 0

	for (int i = 0; i < sizeof(a)/sizeof(int); i++)
		cout << a[i] << ' ';
	cout << '\n';

	for (int i = 0; i < sizeof(b)/sizeof(int); i++)
		cout << b[i] << ' ';
	cout << '\n';
	
	cout << "size of a (in bytes) = " << sizeof(a) << '\n';
	cout << "size of b (in bytes) = " << sizeof(b) << '\n';
}
