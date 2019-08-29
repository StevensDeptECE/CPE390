int main() {
	const int n = 1000;
	bool* primes = new bool[n]; // you will do 1billion / 32 = 32.75 million
	// 125Mb  new uint32_t[M];

	for (int i = 0; i < n; i++)
		primes[i] = true;
	for (int i = 2*2; i < n; i +=2)
		primes[i] = false;
	int count = 1; // 2 is prime
	for (int i = 3; i < n; i++)
		if (isPrime[i]) {
			count++;
      for (int j = i * 2; j < n; j += i)
				isPrime[j] = false;
		}
	cout << "count=" << count << '\n';
}
	
