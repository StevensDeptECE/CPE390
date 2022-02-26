// return the integer sum of the array x
int sum(const int x[], int len) {

}


double mean(const int x[], int len) {

}


// compute teh dot product sum(a[i]*b[i])
double dot(const double a[], const double b[], int len) {

}


void windChill() {

}


void stats(const double x[], uint32_t len, double& mean, double& min, double& max) {
	double sum = x[0];
	double tempmin = x[0];
	double tempmax = x[0];
	for (int i = 1; i < len;i++) {
		sum += x[i];
		if (x[i] < tempmin)
			tempmin = x[i];
		if (x[i] > tempmax)
			tempmax = x[i];
	}
	mean = sum / n; // write to memory
	min = tempmin; // write to memory
	max = tempmax;
}

double fact(int n) {


}


int main() {1
	int a[] = {1, 2, 3, 4};
	int y = sum(a, 4); // 10

	double m = mean(a, 4); // 2.5

	double x[] = {1, 2, 3};
	double y[] = {3, 4, 6};
	double d = dot(x,y,3); // 1*3+2*4+3*6


	double mean, min, max;
	stats(x, 3, mean, min, max);

	// write a recursive function to compute
	cout << fact(5);
}
