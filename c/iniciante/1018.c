/* title: Cédulas
 * number of the problem: 1018
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>
#include <math.h>

void myRemainder(unsigned long int *v, double v2);

int main(void) {
    unsigned long int v = 0;

    scanf("%lu", &v);

    printf("%ld\n", v);
    printf("%.0lf nota(s) de R$ 100,00\n", (floor(v / 100)));
    myRemainder(&v, 100.0);
    printf("%.0lf nota(s) de R$ 50,00\n", (floor(v / 50)));
    myRemainder(&v, 50.0); 
    printf("%.0lf nota(s) de R$ 20,00\n", (floor(v / 20)));
    myRemainder(&v, 20.0);
    printf("%.0lf nota(s) de R$ 10,00\n", (floor(v / 10)));
    myRemainder(&v, 10.0);
    printf("%.0lf nota(s) de R$ 5,00\n", (floor(v / 5)));
    myRemainder(&v, 5.0);
    printf("%.0lf nota(s) de R$ 2,00\n", (floor(v / 2)));
    myRemainder(&v, 2.0);
    printf("%.0lf nota(s) de R$ 1,00\n", (floor(v / 1)));

    return 0;
}

void myRemainder(unsigned long int *v, double v2) {
    *v = fmod((double) *v, v2);
}
