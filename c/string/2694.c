/* title: Problema com a Calculadora
 * problem number: 2694
 * date: 17/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>

int sumString(char *string);

int main(void) {
    int n_cases;
    char string[15];
    scanf("%d", &n_cases);

    for (int i=0; i < n_cases; i++) {
        scanf("%s", string);

        printf("%d\n", sumString(string));
    }

    return 0;
}

int sumString(char *string) {
    int start = -1, end = -1, sum = 0;
    char temp[15];

    //populating the array with whitespaces
    for (int i = 0; i < 15; i++) {
        temp[i] = ' ';
    }

    for (int i = 0; i < 15; i++) {
        if ( isdigit(string[i]) != 0) {
            start = i;
            if (start >= 0) {
                for (int s = start; s < 15; s++) {
                    if ( isdigit(string[s]) == 0 ) {
                        end = s;
                        break;
                    }
                }

                //populating a temporary array with only numbers
                for (int c = start; c < end; c++) {
                    temp[c] = string[c];
                }
            }
        }
    }

    // using strtok to split up whitespaces and add only the numbers
    char * str_numbers;
    /*char *strtok(char *str, const char *delim)
     * delim can be anything, like " -,.", " ", "-", etc. */

    str_numbers = strtok (temp, " ");

    while (str_numbers != NULL)
    {
        sum += atoi(str_numbers);
        str_numbers = strtok (NULL, " ");
    }

    return sum;
}
