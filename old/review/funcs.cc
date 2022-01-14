
// CMP a,b   --> compute a-b   Z = set (equal)  N = negative  V = overflow

int fact(int n) {
  if (n == 0 )
		return 1;
	return n * fact(n-1);
}
