#include <stdio.h>

int soma(int A, int B) {
    return (A + B);
}

void printresultado(int resultado) {
    printf("X = %d\n", resultado);
}

int main() {
    int A;
    scanf("%d", &A);
    int B;
    scanf("%d", &B);

    printresultado(soma(A, B));

    return 0;
}
