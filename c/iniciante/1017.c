/* title: Gasto de Combustível
 * number of the problem: 1017
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>
#define GMPK 12

int main(void) {
    double t, d;
    scanf("%lf", &t);
    scanf("%lf", &d);

    printf("%.3f\n", ((t * d) / GMPK));

    return 0;
}
