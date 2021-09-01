#include <stdio.h>

double return_media(double A, double B) {
    const double peso1 = 3.5;
    const double peso2 = 7.5;

    return ( ( (A * peso1) + (B * peso2) ) / (peso1 + peso2) );
}

void print_media(double media) {
    printf("MEDIA = %.5f\n", media);
}

int main(void) {
    double A, B;
    scanf("%lf", &A);
    scanf("%lf", &B);

    print_media(return_media(A, B));

    return 0;
}
