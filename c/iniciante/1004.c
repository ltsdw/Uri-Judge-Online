#include <stdio.h>

int return_prod(int value1, int value2) {
    return (value1 * value2);
}

void print_prod(int PROD) {
    printf("PROD = %d\n", PROD);
}

int main(void) {
    int value1, value2;
    scanf("%d", &value1);
    scanf("%d", &value2);

    print_prod(return_prod(value1, value2));

    return 0;
}
