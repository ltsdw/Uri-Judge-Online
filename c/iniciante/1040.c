/* title: Intervalo
 * number of the problem: 1037
 * date: 18/09/2020
 * author: ltsdw
 */

#include <stdio.h>

int main(void) {
    double n1 = 0, n2 = 0, n3 = 0, n4 = 0, exame = 0, mediae = 0, media = 0;
    scanf("%lf%lf%lf%lf", &n1, &n2, &n3, &n4);

    media = ( (n1 * 2) + (n2 * 3) + (n3 * 4) + (n4 * 1) ) / 10;

    if (media >= 7) {
        printf("Media: %.1f\nAluno aprovado.\n", media);

    } else if (media < 5) {
        printf("Media: %.1f\nAluno reprovado.\n", media);

    } else if ( (media >= 5) && (media <= 6.9) ) {
        printf("Media: %.1f\nAluno em exame.\n", media);

        scanf("%lf", &exame);

        mediae = (exame + media) / 2;
        printf("Nota do exame: %.1f\nAluno aprovado.\nMedia final: %.1f\n", exame, mediae);
    }

    return 0;
}
