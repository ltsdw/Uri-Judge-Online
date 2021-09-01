#include <stdio.h>

void check_foton(int* n_visible_stars, int A, int F) {
    if ( (F * A) >= 40000000 ) {
        *n_visible_stars += 1;
    }
}

int main(void) {
    int A, F, N;
    int n_visible_stars = 0;
    scanf("%d", &F);
    scanf("%d", &N);

    for (int i = 0; i < N; i++) {
        scanf("%d", &A);

        check_foton(&n_visible_stars, A, F);
    }

    printf("%d\n", n_visible_stars);

    return 0;
}
