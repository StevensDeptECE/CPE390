X0 ... x30
W0 ... W30
x30 = sp (CANNOT USE)
x29 = LR (CANNOT USE)

w0..w7 (passing parameters)


//w0          x0,      d0
int f(uint64_t a, double b);


//       w0         d0         x1           w2
void g(int a, double b, double* p, uint32_t c);

//          d0        d1     w0,     w1         x2
void h(double a, double b, int c, int d, uint64_t e);



			 f();    //   bl    f     lr = pc,  pc = f
//return;      //   ret         pc=lr
