/* title: Consumo
 * number of the problem: 1014
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>

int main(void) {
    int d;
    double l;
    scanf("%d", &d);
    scanf("%lf", &l);

    printf("%.3f km/l\n", ((double) d / l));

}
