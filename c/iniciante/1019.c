/* title: Conversão de Tempo
 * number of the problem: 1019
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>
#include <math.h>

int main(void) {
    long int s = 0, m = 0, h = 0;
    scanf("%ld", &s);

    if (s >= 60) {
        m = s / 60;
        s = fmod(s, 60);
    }

    if (m >= 60) {
        h = m / 60;
        m = fmod(m, 60);
    }

    printf("%ld:%ld:%ld\n", h, m, s);

    return 0;
}
