int add(int a, int b);
int mult(int a, int b);

void testadd(int n) {
	for (int i = 0; i < n; i++)
		int c = add(1,2);
}

void testmult(int n) {
	for (int i = 0; i < n; i++)
		int c = mult(2,3);
}

void testsequentialmemory(int n) {
	int* p = new int[n];
	for (int i = 0; i < n; i++)
		p[i] = 0;
	delete[] p;
}


void testmemoryjumps16(int n) {
	int* p = new int[n];
	for (int j = 0; j < 16; j++) {
		for (int i = j; i < n; i+=16)
			p[i] = 0;
	}
	delete[] p;
}

void testmemoryjumps2(int n) {
	int* p = new int[n];
	for (int j = 0; j < 2; j++) {
		for (int i = j; i < n; i+=2)
			p[i] = 0;
	}
	delete[] p;
}

void testmemoryjumps8(int n) {
	int* p = new int[n];
	for (int j = 0; j < 8; j++) {
		for (int i = j; i < n; i+=8)
			p[i] = 0;
	}
	delete[] p;
}

void testmemoryjumps4(int n) {
	int* p = new int[n];
	for (int j = 0; j < 4; j++) {
		for (int i = j; i < n; i+=4)
			p[i] = 0;
	}
	delete[] p;
}

void testmemoryjumps1024(int n) {
	int* p = new int[n];
	for (int j = 0; j < 1024; j++) {
		for (int i = j; i < n; i+=1024)
			p[i] = 0;
	}
	delete[] p;
}
