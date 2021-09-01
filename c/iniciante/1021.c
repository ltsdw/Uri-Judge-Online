/* title: Notas e Moedas
 * number of the problem: 1021
 * date: 18/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <math.h>

int main(void) {
    double cem = 0.0, cinquenta = 0.0, vinte = 0.0, dez = 0.0, cinco = 0.0, dois = 0.0, total = 0.0;
    double um = 0.0, cinqcents = 0.0, vintcents = 0.0, dezcents = 0.0, cincents = 0.0, umcents = 0.0;

    scanf("%lf", &total);

    total += 0.001;

    cem = floor(total / 100.0);
    cinquenta = floor(fmod(total, 100.0) / 50.0);
    vinte = floor(fmod(fmod(total, 100.0), 50.0) / 20.0);
    dez = floor(fmod(fmod(total, 50.0), 20.0) / 10.0);
    cinco = floor(fmod(total, 10.0) / 5.0);
    dois = floor(fmod(total, 5.0) / 2.0);
    um = floor(fmod(fmod(fmod(fmod(fmod(fmod(total, 100.0), 50.0), 20.0), 10.0), 5.0), 2.0) / 1.0);
    cinqcents = floor(fmod(total, 1) / 0.5);
    vintcents = floor(fmod(total, 0.5) / 0.25);
    dezcents = floor(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(total, 100.0), 50.0), 20.0), 10.0), 5.0), 2.0), 1.0), 0.5), 0.25) / 0.1);
    cincents = floor(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(total, 100.0), 50.0), 20.0), 10.0), 5.0), 2.0), 1.0), 0.5), 0.25), 0.1) / 0.05);
    umcents = floor(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(fmod(total, 100.0), 50.0), 20.0), 10.0), 5.0), 2.0), 1.0), 0.5), 0.25), 0.1), 0.05) / 0.01);

    printf("NOTAS:\n");
    printf("%.0f nota(s) de R$ 100.00\n", cem);
    printf("%.0f nota(s) de R$ 50.00\n", cinquenta);
    printf("%.0f nota(s) de R$ 20.00\n", vinte);
    printf("%.0f nota(s) de R$ 10.00\n", dez);
    printf("%.0f nota(s) de R$ 5.00\n", cinco);
    printf("%.0f nota(s) de R$ 2.00\n", dois);
    printf("MOEDAS:\n");
    printf("%.0f moeda(s) de R$ 1.00\n", um);
    printf("%.0f moeda(s) de R$ 0.50\n", cinqcents);
    printf("%.0f moeda(s) de R$ 0.25\n", vintcents);
    printf("%.0f moeda(s) de R$ 0.10\n", dezcents);
    printf("%.0f moeda(s) de R$ 0.05\n", cincents);
    printf("%.0f moeda(s) de R$ 0.01\n", umcents);
    
    return 0;
}
