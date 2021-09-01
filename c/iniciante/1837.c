#include <stdio.h>
#include <stdlib.h>

void div_euclidiana(int a, int b, int* q, int* r) {
    int i = *r;

    for (i = 0; i < abs(b); i++) {
        if ( ((a - i) % b) == 0 ) {
            *r = i;
            *q = (a - i) / b;
            break;
        }
    }
}

void print_result(int q, int r) {
    printf("%d %d\n", q, r);
}

int main(void) {
    int a, b;
    int q = 0;
    int r = 0;
    scanf("%d %d", &a, &b);

    div_euclidiana(a, b, &q, &r);

    print_result(q, r);

    return 0;
}
