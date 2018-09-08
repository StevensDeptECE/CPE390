class Matrix {
private:
	uint32_t rows,cols;
	double* m;
public:
	Matrix(uint32_t rows, uint32_t cols) : rows(rows), cols(cols), m(new double[rows*cols]) {}
	
	
};
