#include <stdio.h>

int return_triangulacao(int lados) {
    return ( lados - 2 );
}

int main(void) {
    int lados;
    scanf("%d", &lados);

    printf("%d\n", return_triangulacao(lados));

    return 0;
}
