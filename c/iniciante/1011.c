/* title: Esfera
 * number of the problem: 1011
 * date: 18/09/20
 * author: ltsdw
 */

#include <stdio.h>
#define PI 3.14159

double volume(double radius);

int main(void) {
    double radius;

    scanf("%lf", &radius);

    printf("VOLUME = %.3f\n", volume(radius));

    return 0;
}

double volume(double radius) {
    return ((4.0 / 3.0) * PI * ((radius * radius) * radius));
}
