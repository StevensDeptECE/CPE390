#pragma once

double f1a(double x);
double f1b(double x, double y);
double f1c(double x, double y, double z);
double f1d(double w, double x, double y, double z);
double f1e(double v, double w, double x, double y, double z);
void stats(const int a[], int len, double& mean, int& min, int& max);
void polar2rect(double r, double theta, double& x, double& y);
struct point {
	double x,y;
};
point polar2rect2(double r, double theta);
