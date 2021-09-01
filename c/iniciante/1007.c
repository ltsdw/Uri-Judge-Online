#include <stdio.h>

int *produto(int A, int B, int C, int D) {
    static int arr[2];
    
    arr[0] = (A * B);
    arr[1] = (C * D);

    return arr;
}

int diferenca(int *arr) {
    return (arr[0] - arr[1]);
}

void print_diferenca(int diferenca) {
    printf("DIFERENCA = %d\n", diferenca);
}

int main(void) {
    int A, B, C, D;
    int *prod;
    int dif;

    scanf("%d", &A);
    scanf("%d", &B);
    scanf("%d", &C);
    scanf("%d", &D);

    prod = produto(A, B, C, D);
    dif = diferenca(prod);

    print_diferenca(dif);

    return 0;
}

