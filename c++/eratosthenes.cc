/*
	def: a prime number is an integer divisible only by itself and 1, 1 is not prime


	factors of 28 = 1 * 28, 2*14 4*7
 */
bool isPrime(uint64_t p) {
	for (uint64_t i = 2; i <= sqrt(p); i++)
		if (p % i == 0)
			return false; // Omega(1)
	return true; // O(sqrt(p))
}

// 1001      2  3   5    7   8
//https://primes.utm.edu/howmany.html
uint32_t armAssemblerEratosthenesPseudocode(uint32_t n) {

  

}



int main() {
	cout << isPrime(100000000001LL) << '\n';
	/*
		Eratosthenes
		2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20  ... n
    1 1 0 1 0 1 0 0 0  1   0  1  0  0  0  1  0  1  0

	 */
	// Eratosthenes1
	bool isPrime[10000]; // MUST SET ALL TRUE fIRST!!!
	for (int i = 2 ; i <= n; i++)
		if (isPrime[i])
			for (int j = i*2; j <= n; j += i)
				isPrime[j] = false;


	// Eratosthenes2
	bool isPrime[10000]; // MUST SET ALL TRUE fIRST!!!
	for (int i = 2; i <=n; i++)
		isPrime[i]= true;
	for (int i = 2*2 ; i <= n; i+=2)
    isPrime[i] = false;

		/*
		Eratosthenes (better)
		2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20  ... n
    1 1 0 1 0 1 0 0 0  1   0  1  0  0  0  1  0  1  0

	 */

  for (int i = 3; i <= n; i += 2)
		if (isPrime[i])
			for (int j = i*i; j <= n; j += 2*i)
				isPrime[j] = false;

}
