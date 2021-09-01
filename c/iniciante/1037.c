/* title: Intervalo
 * number of the problem: 1037
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>

int main(void) {
    double n;
    scanf("%lf", &n);

    if ( (n < 0) || (n > 100.0) ) {
        printf("Fora de intervalo\n");

    } else {
        if ( (n >= 0) && (n <= 25.00) ) {
            printf("Intervalo [0,25]\n");
        } else if ( (n > 25.00) && (n <= 50.00) ) {
            printf("Intervalo (25,50]\n");
        } else if ( (n > 50.00) && (n <= 75.00) ) {
            printf("Intervalo (50,75]\n");
        } else {
            printf("Intervalo (75,100]\n");
        }
    }

    return 0;
}
