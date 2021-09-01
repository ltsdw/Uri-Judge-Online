/*  title: Quanta Mandioca?
 *  problem number: 2936
 *  date: 13/09/20
 *  author: ltsdw
 */ 

#include <stdio.h>
#define DONA_CHICA 225

int quanta_mandioca(int indice, int portion) {
    int povao[5] = {300, 1500, 600, 1000, 150};
    if (indice == 4) {
        return ((povao[indice] * portion) + DONA_CHICA);
    } else {
        return (povao[indice] * portion);
    }
}

void print_qtd_mandiocas(int qtd_mandiocas) {
    printf("%d\n", qtd_mandiocas);
}

int main(void) {
    int portion = 0, qtd_mandiocas = 0;
    for (int i=0; i < 5; i++) {
        scanf("%d", &portion);

        qtd_mandiocas += quanta_mandioca(i, portion);
    }

    print_qtd_mandiocas(qtd_mandiocas);

    return 0;
}
