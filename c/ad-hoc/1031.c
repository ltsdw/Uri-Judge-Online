/*  title: Crise de Energia
 *  problem number: 1031
 *  date: 14/09/20
 *  author: ltsdw
 */

#include <stdio.h>

int josephus(int n, int y) {
    int r = 0;

    for (int i = 1; i < n; i++) {
        r = (r + y) % i;
    }

    return r;
}

int main(void) {
    int n, y;

    while (1) {
        scanf("%d", &n);
        if (n == 0) {
            break;
        }

        y = 0;

        while (josephus(n, y) != 11) {
            y++;
        }

        printf("%d\n", y);
    }

    return 0;
}
