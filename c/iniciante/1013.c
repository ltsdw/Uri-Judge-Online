/* title: O Maior
 * number of the problem: 1013
 * date: 18/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <stdlib.h>

void ehomaior(int a, int b, int c);

int main(void) {
    int a, b, c;

    scanf("%d%d%d", &a, &b, &c);

    ehomaior(a, b, c);

    return 0;
}

void ehomaior(int a, int b, int c) {
    int maiorab = (a + b + abs(a - b)) / 2;
    int maiorabc = (maiorab + c + abs(maiorab - c)) / 2;

    printf("%d eh o maior\n", maiorabc);

    return;
}
