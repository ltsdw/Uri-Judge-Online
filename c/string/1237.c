/* title: Comparação de Substring
 * number of the problem: 1237
 * date: 19/09/2020
 * author: ltsdw
 */

#include <stdio.h>

int return_len(char *string);
int countMatches(char *string1, char *string2, int max_len);

int main(void) {
    char string1[51], string2[51];
    int l1 = 0, l2 = 0, n_matches = 0;

    while (scanf("%[^\n]%*c", string1), scanf("%[^\n]%*c", string2) != EOF) {
        l1 = return_len(string1);
        l2 = return_len(string2);

        if (l1 >= l2) {
            n_matches = countMatches(string1, string2, l1);
        } else {
            n_matches = countMatches(string2, string1, l2);
        }

        printf("%d\n", n_matches);
    }

    return 0;
}

int return_len(char *string) {
    int len = 0;

    for (len = 0; string[len] != '\0'; len++);

    return len;
}

int countMatches(char *string1, char *string2, int max_len) {
    int l2 = return_len(string2), i = 0, j = 0, ii = 0, jj = 0, n_matches = 0, max = 0;

    for (j = 0; j < l2; j++) {
        for (i = 0; i < max_len; i++) {
            n_matches = 0;
            for (ii = i, jj = j; string2[jj] == string1[ii]; ii++, jj++) {
                if (ii == max_len || jj == l2) {
                    break;
                } else { 
                    n_matches++;
                }
            }

            if (n_matches > max) {
                max = n_matches;
            }
        }
    }

    return max;
}
