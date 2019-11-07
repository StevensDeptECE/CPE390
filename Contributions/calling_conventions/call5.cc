/*
Author: Peter Ho

    The following is the driver code for call5.s

    g++ call5.s call5.cc -o call5
 */

#include <iostream>
using namespace std;

extern int add5(int a, int b, int c, int d, int e);
int main(int argc, char **argv)
{
    // should print 29
    cout << add5(1, 2, 3, 4, 19) << endl;
    return 0;
}
