#include <stdio.h>
#include <ctype.h>

int lenstr(char *str) {
    int len;

    for (len = 0; str[len] != '\0'; len++);

    return len;
}

char if_true_captalize(char ch, int *isupper) {
    if (ch >= 'a' && ch <= 'z' && *isupper == 1 && ch != ' ') {
        *isupper = 0;
        return toupper(ch);
    } else if (ch >= 'a' && ch <= 'z' && *isupper == 0 && ch != ' ') {
        *isupper = 1;
        return ch;
    } else if (ch >= 'A' && ch <= 'Z' && *isupper == 0 && ch != ' ') {
        *isupper = 1;
        return tolower(ch);
    } else if (ch >= 'A' && ch <= 'Z' && *isupper == 1 && ch != ' ') {
        *isupper = 0;
        return ch;
    } else if (ch == ' ') {
        return ' ';
    } else {
        return ch;
    }
}

int main(void) {
    char string[51];
    int lenstring;
    int isupper;
    while(scanf("%[^\n]%*c", string) != EOF) {
        lenstring = lenstr(string);
        isupper = 1;
        for (int i = 0; i < lenstring; i++) {
            printf( "%c", if_true_captalize(string[i], &isupper) );
        }
        printf("\n");
    }
    return 0;
}
