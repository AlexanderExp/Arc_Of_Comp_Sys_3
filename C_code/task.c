#include "math.h"

double function(double x) {
    int n = 2;
    double diff = 1.0;
    double e = 0.0005;
    double res = x;
    double previous_res;
    while (diff > e) {
        previous_res = res;
        res += pow(-1, n - 1) * (pow(x, 2 * n - 1) / (2 * n - 1));
        diff = fabs(previous_res - res);
        n++;
    }
    return res;
}