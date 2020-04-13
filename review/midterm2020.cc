int sum(int a[], int n);

double mean(int a[], int n){
	double sum = 0;
  for (int i = 0; i < n; i++)
		sum += a[i];
  return sum/n;
}

// sum the squares from a to b for example sumsq(3, 5) = 3*3 + 4*4 + 5*5
int sumsq(int a, int b) {

}

int main() {
	int x[] = {5, 4, 3, 9};
	cout << mean(x, 4) << '\n'; // expect 2.5

}
