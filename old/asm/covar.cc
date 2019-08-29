// CPP Program to find
// covariance of two set.
#include<bits/stdc++.h>
using namespace std;
 
// Function to find mean.
float mean(float arr[], int n) {
	float sum = 0;
	for(int i = 0; i < n; i++)
		sum = sum + arr[i];
	return sum / n;
}
 
// Function to find covariance.
float covariance(float arr1[], float arr2[], int n) {
	float sum = 0;
	for(int i = 0; i < n; i++)
		sum = sum + (arr1[i] - mean(arr1, n)) *
			(arr2[i] - mean(arr2, n));
	return sum / (n - 1);
}
 
// Driver function.
int main() {
	float arr1[] = {65.21, 64.75, 65.26, 65.76, 65.96};
	int n = sizeof(arr1) / sizeof(arr1[0]);
	
	float arr2[] = {67.25, 66.39, 66.12, 65.70, 66.64};
	int m = sizeof(arr2) / sizeof(arr2[0]);
  
	if (m == n)
		cout << covariance(arr1, arr2, m);
	return 0;
}
