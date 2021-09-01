#include <stdio.h>

void print_xor_bitwise(long long int a, long long int b) {
    printf("%lld\n", (a ^ b));
}

int main(void) {
    long long int a, b;
    while ( scanf("%lld %lld", &a, &b) != EOF ) {
        print_xor_bitwise(a, b);
    }

    return 0;
}
