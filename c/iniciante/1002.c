#include <stdio.h>

double return_area(double raio) {
    const double pi = 3.14159;

    return (pi * (raio * raio));
}

void print_area(double area) {
    printf("A=%.4f\n", area);
}

int main(void) {
    double raio;
    scanf("%lf", &raio);

    print_area(return_area(raio));
    return 0;
}
