/* title: LED
 * problem number: 1168
 * date: 17/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <string.h>

int check_leds(char *leds);

void printNumLeds(int num_leds);

int main(void) {
    int n_cases;
    char leds[102];

    scanf("%d", &n_cases);

    for (int i = 0; i < n_cases; i++) {
        scanf("%s", leds);

        printNumLeds(check_leds(leds));
    }

    return 0;
}

int check_leds(char *leds) {
    int result = 0;
    int len = strlen(leds);

    for (int i = 0; i < len; i++) {
        if (leds[i] == '1') {
            result += 2;
        }
        if (leds[i] == '2') {
            result += 5;
        }
        if (leds[i] == '3') {
            result += 5;
        }
        if (leds[i] == '4') {
            result += 4;
        }
        if (leds[i] == '5') {
            result += 5;
        }
        if (leds[i] == '6') {
            result += 6;
        }
        if (leds[i] == '7') {
            result += 3;
        }
        if (leds[i] == '8') {
            result += 7;
        }
        if (leds[i] == '9') {
            result += 6;
        }
        if (leds[i] == '0') {
            result += 6;
        }
    }

    return result;
}

void printNumLeds(int num_leds) {
    printf("%d leds\n", num_leds);

    return;
}
