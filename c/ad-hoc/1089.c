/* title: Loop Musical
 * problem number: 1089
 * date: 16/09/20
 * author: ltsdw
 */

#include <stdio.h>

int picos(int length_array, int *array);

int main(void) {
    int length_array;
    while (scanf("%d", &length_array), length_array) {
        int array[length_array];
        for (int i = 0; i < length_array; i++) {
            scanf("%d", &array[i]);
        }

        printf("%d\n", picos(length_array, array));

    }

    return 0;
}

int picos(int length_array, int *array) {
    int qtd_picos = 0;

    if ( ( (array[0] - array[length_array - 1]) * (array[0] - array[1]) ) > 0 ) {
        qtd_picos++;
    }
    if ( ( (array[length_array - 1] - array[length_array - 2]) * (array[length_array - 1] - array[0]) ) > 0 ) {
        qtd_picos++;
    }

    for (int i = 1; i < (length_array - 1); i++) {
        if ( ( (array[i] - array[i - 1]) * (array[i] - array[i + 1]) ) > 0 ) {
            qtd_picos++;    
        }
    }

    return qtd_picos++;
}
