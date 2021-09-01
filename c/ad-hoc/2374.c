/*  title: Pneu
 *  problem number: 2374
 *  date: 13/09/20
 *  author: ltsdw
 */

#include <stdio.h>

void print_diferenca(int N, int M) {
    printf("%d\n", (N - M));
}

int main(void) {
    int N, M;
    scanf("%d", &N);
    scanf("%d", &M);

    print_diferenca(N, M);

    return 0;
}
