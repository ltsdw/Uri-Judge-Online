#include <stdio.h>

double return_salary(double *arr) {
    const int percentage = 15;

    return (arr[0] + (percentage * arr[1] / 100));
}

void print_info(double salary) {
    printf("TOTAL = R$ %.2f\n", salary);
}

int main(void) {
    double arr[2];

    scanf("%*s");

    for (int i=0; i < 2; i++) {
        scanf("%lf", &arr[i]);
    }

    print_info( return_salary(arr) );

    return 0;
}
