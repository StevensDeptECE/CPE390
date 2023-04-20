double f1(double x) {
    const double c1 = 1.5;
    const double c2 = 6.2;
    return c1*x*c2;
}

double f2(double x) {
    const double c1 = 1.5;
    const double c2 = 6.2;
    return (c1*c2)*x;
}

double f3(double x) {
    const double c1 = 1.5;
    const double c2 = 6.2;
    return c1*x / c2;
}

double f3(double x) {
    const double c1 = 1.5;
    const double c2 = 6.2;
    return (c1/c2)*x;
}

double f4(double a, double b, double c, double d) {
    //return a * b + c * b + d * b;
    return b*(a+c+d);
}

double f5(double a, double b, double c, double d, double x) {
 //   return a * pow(x,3) + b * pow(x, 2), + c * pow(x,1) + d * pow(x,0);
    
//    return a * pow(x,3) + b * pow(x, 2), + c * pow(x,1) + d;
    return a*x*x*x + b * x*x + c * x + d;
    // Horner's form

    return ((a * x + b) * x + c)* x + d;
}

int main() {


}