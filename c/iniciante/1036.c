/* title: Fórmula de Bhaskara
 * number of the problem: 1036
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>
#include <math.h>

int main(void) {
    double a, b, c, delta, r1, r2;

    scanf("%lf%lf%lf", &a, &b, &c);

    if (a == 0) {
        printf("Impossivel calcular\n");

    } else {
        delta = (b * b) - (4 * a * c);

        if (delta <= 0) {
            printf("Impossivel calcular\n");
        } else {
            r1 = ( (b * -1) + sqrt(delta) ) / (2 * a);
            r2 = ( (b * -1) - sqrt(delta) ) / (2 * a);

            printf("R1 = %.5f\nR2 = %.5f\n", r1, r2);
        }
    }

    return 0;
}
