#include <stdio.h>

double return_media(double A, double B, double C) {
    const double peso2 = 2;
    const double peso3 = 3;
    const double peso5 = 5;

    return ( ( (A * peso2) + (B * peso3) + (C * peso5) ) / (peso2 + peso3 + peso5) );
}

void print_media(double media) {
    printf("MEDIA = %.1f\n", media);
}

int main(void) {
    double A, B, C;
    scanf("%lf", &A);
    scanf("%lf", &B);
    scanf("%lf", &C);

    print_media(return_media(A, B, C));

    return 0;
}
