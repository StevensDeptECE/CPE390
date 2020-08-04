/*
write functions so these work in ARM assembler!
*/
int main() {
	cout << fact(5) << '\n'; // 1*2*3*4*5
	cout << fact(7) << '\n'; // 1*2*3*4*5

	int x[4] = {2, 4, 5, 6};
	cout << prod(x, 4) << '\n';
	cout << prod(x, 0) << '\n'; // answer should be 1
}	
