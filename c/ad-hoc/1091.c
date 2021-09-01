/* title: Divisão da Nlogônia
 * problem number: 1091
 * date: 16/09/20
 * author: ltsdw
 */

#include <stdio.h>

char *return_cord(int cord_n, int cord_m, int x, int y);

int main(void) {
    int n_cases;
    while (scanf("%d", &n_cases), n_cases) {
        int cord_n, cord_m;
        scanf("%d%d", &cord_n, &cord_m);

        for (int i = 0; i < n_cases; i++) {
            int x, y;
            scanf("%d%d", &x, &y);
            printf("%s\n", return_cord(cord_n, cord_m, x, y));
        }
    }

    return 0;
}

char *return_cord(int cord_n, int cord_m, int x, int y) {
    if ( (x == cord_n) || (x == cord_m) || (y == cord_n) || (y == cord_m) ) {
        return "divisa";
    } else {
        if ( (x > cord_n) && (y > cord_m) ) {
            return "NE";
        } else if ( (x < cord_n) && (y > cord_m) ) {
            return "NO";
        } else if ( (x < cord_n) && (y < cord_m) ) {
            return "SO";
        } else {
            return "SE";
        }
    }
}
