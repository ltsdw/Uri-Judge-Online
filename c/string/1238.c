/* title: Combinador
 * number of the problem: 1238
 * date: 18/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <string.h>

void combinator(char *word1, char *word2);
void printChar(int index, int length_word, char ch);

int main(void) {
    int n_cases;
    char word1[60], word2[60];

    scanf("%d", &n_cases);

    while (n_cases--) {
        scanf("%s%s", word1, word2);

        combinator(word1, word2);
    }

    return 0;
}

void combinator(char *word1, char *word2) {
    int len = 0, length_word1 = strlen(word1), length_word2 = strlen(word2);

    if (length_word1 > length_word2) {
        len = length_word1;
    } else {
        len = length_word2;
    }

    for (int i = 0; i < len; i++) {
        printChar(i, length_word1, word1[i]);
        printChar(i, length_word2, word2[i]);
    }

    printf("\n");

    return;
}

void printChar(int index, int length_word, char ch) {
    if (index < length_word) {
        printf("%c", ch);
    }

    return;
}
