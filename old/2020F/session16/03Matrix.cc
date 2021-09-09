class Matrix {
private:
	double m[100][100]; // 800 bytes
public:
	Matrix(double v) {
		for (int i = 0; i < 100; i++)
			for (int j = 0; j < 100; j++)
				m[i][j] = v;
	}
	// member function add a.add(b)
  Matrix add(const Matrix& b) const { // const promises not to change this
		Matrix ans(m[0][0] + b.m[0][0]);
		return ans;
	}


	// a + b
	friend Matrix operator +(const Matrix& a, const Matrix& b) {
		Matrix ans(a.m[0][0] + b.m[0][0]);
		return ans;
	}

	// add(a,b)
	friend Matrix add(const Matrix& a, const Matrix& b) {
		Matrix ans(a.m[0][0] + b.m[0][0]);
		return ans;
	}

};

int main() {
	Matrix a(1.5);
	Matrix b(2.2);
	Matrix c = a + b;    // function called operator +
	Matrix d = add(a,b); // function called add
	Matrix e = a.add(b); // method (object-oriented programming) in C++=member function


}
