/* title: Jetiqui
 * problem number: 2587
 * date: 16/09/20
 * author: ltsdw
 */

#include <stdio.h>

void isPossible(char *word1, char *word2, char *word3);

int main(void) {
    int n_cases;
    char word1[15];
    char word2[15];
    char word3[15];

    scanf("%d", &n_cases);

    while (n_cases--) {
        scanf("%s", word1);
        scanf("%s", word2);
        scanf("%s", word3);

        isPossible(word1, word2, word3);
    }

    return 0;
}

void isPossible(char *word1, char *word2, char *word3) {
    int udr_line1 = -1, udr_line2 = -1, break_first_loop = -1;

    for (int i = 0; i < 15; i++) {
        if (break_first_loop == 1) {
            break;
        }

        if (word3[i] == '_') {
            udr_line1 = i;
            for (int j = i + 1; j < 15; j++) {
                if (word3[j] == '_') {
                    udr_line2 = j;
                    break_first_loop = 1;
                    break;
                }
            }
        }
    }
    
    if ( (word1[udr_line1] == word2[udr_line2]) || (word1[udr_line2] == word2[udr_line1]) ) {
        printf("Y\n");
    } else {
        printf("N\n");
    }

    return;
}
