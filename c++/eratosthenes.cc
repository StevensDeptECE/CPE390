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



	/*
		how to do all this with bit manipulation
		suggestion: 0x80000000   1
		
		n = 64   n = 62
		whichWord = n / sizeofyourword = n / 32    faster: LSR n, #5
		isPrime[whichWord]   baselocation + 4 * whichword

		load this word into register R3

		now check which bit in R3
		whichbit = n % 32    // AND with 32-1 = 31 1 1111 0x1F
		1 << whichbit       ; //LSL 1, whichbit

		how to test whether a bit is true
		101010101011110101010101x1101
    00000000000000000000000010000   1 << whichbit
    =============================
    000000000000000000000000x0000

		11111111111111111111111111111111  step1: everyone is prime

		10101010101010101010101010101111  step2: eliminate all evens except 2

		10101010101010101010101010101111  step3: for i = 3 to n step 2
		                                            if isprime[i] look up bit i
																								  for j = i*i; j <= n; j += 2*i
																									   isprime[j] = false
		10101010101010100010101010101111 
    00000000000000000000001000000000      1 << bitpos
    11111111111111111111110111111111      invert MVN
    ================================
    10101010101010100010100010101111      AND (NOT (1 << bitpos))  
		                                      in c++: bits[pos] & ~(1<<bitpos)
conditional instructons
    ADDnz  R2, R2, #1


	*/

}
