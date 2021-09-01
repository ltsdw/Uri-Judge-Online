#include <stdio.h>

int josephus(int n, int k) {
    if (n == 1) {
        return 1;
    } else {
        return ((josephus(n -1, k) + k -1) % n + 1);
    }
}

void print_josephus(int i, int n, int k) {
    printf("Case %d: %d\n", i, josephus(n, k));
}

int main(void) {
    int n_cases, n, k;
    scanf("%d", &n_cases);

    for ( int i = 1; i < (n_cases + 1); i++ ) {
        scanf("%d %d", &n, &k);

        print_josephus(i, n, k);
    }
    return 0;
}
