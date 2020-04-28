const int M = 32, N = 32, P = 32;
matmult(double a[M][N], double b[N][P], double c[M][P]) {

	for (int k = 0; k < M; k++)
		for (int j = 0; j < P; j++) {
			double temp = a[k][0] * b[0][j];
			//			c[k][j] = 0;
			for (int i = 1; i < N; i++)
				temp += a[k][i] * b[i][j];
			c[k][j] = temp;
		}
}
