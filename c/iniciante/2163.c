/*
 * title: O Despertar da Força
 * problem number: 2163
 * date: 17/09/20
 * author: ltsdw
 */

#include <stdio.h>

void tT2(int n, int m);

int main(void) {
    int n, m;
    scanf("%d%d", &n, &m);

    tT2(n, m);

    return 0;
}

void tT2(int n, int m) {
    int matrix[n][m];
    int t = 0, t2 = 0;

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }

    for (int i = 1; i < (n - 1); i++) {
        for (int j = 1; j < (m - 1); j++) {
            if (matrix[i][j] == 42) {
                if ( (matrix[i-1][j-1] == 7) && (matrix[i-1][j] == 7) && (matrix[i-1][j+1] == 7) ) {
                    if ( (matrix[i][j-1] == 7) && (matrix[i][j + 1] == 7) ) {
                        if ( (matrix[i+1][j-1] == 7) && (matrix[i+1][j] == 7) && (matrix[i+1][j+1] == 7) ) {
                            t = i + 1;
                            t2 = j + 1;
                        }
                    }
                }
            }
        }
    }

    printf("%d %d\n", t, t2);

    return;
}
