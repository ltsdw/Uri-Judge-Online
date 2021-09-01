/* title: Idade em Dias
 * number of the problem: 1020
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>
#include <math.h>

int main(void) {
    int d1, a, m, d;
    scanf("%d", &d1);

    a = (int) (d1 / 365);
    m = (int) (fmod(d1, 365) / 30);
    d = (int) (fmod((fmod(d1, 365)), 30));

    printf("%d ano(s)\n", a);
    printf("%d mes(es)\n", m);
    printf("%d dia(s)\n", d);

    return 0;
}
