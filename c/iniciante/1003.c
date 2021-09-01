#include <stdio.h>

int return_soma(int A, int B) {
    return (A + B);
}

void print_soma(int SOMA) {
    printf("SOMA = %d\n", SOMA);
}

int main(void) {
    int A, B;
    scanf("%d", &A);
    scanf("%d", &B);

    print_soma(return_soma(A, B));

    return 0;
}
