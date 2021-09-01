/* title: De Dentro para Fora
 * number of the problem: 1235
 * date: 19/09/2020
 * author: ltsdw
 */

#include <stdio.h>

void correctMyString(char *string);

int main(void) {
    int n_cases;
    char string[2000];

    scanf("%d", &n_cases);
    getchar();

    while (n_cases--) {
        scanf("%[^\n]", string);
        getchar();

        correctMyString(string);
    }

    return 0;
}

void correctMyString(char *string) {
    int len = 0, half = 0, i = 0;

    for (len = 0; string[len] != '\0'; len++);

    half = (len / 2);

    for (i = half - 1; i >= 0; i--) {
        printf("%c", string[i]);
    }

    for (i = len - 1; i >= half; i--) {
        printf("%c", string[i]);
    }

    printf("\n");

    return;
}
