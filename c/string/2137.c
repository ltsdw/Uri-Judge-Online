/* title: A Biblioteca do Senhor Severino
 * problem number: 2137
 * date: 16/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <stdlib.h>

void swap(int *greater, int *lesser);

void sort(int length_array, int *array);

void printElements(int length_array, int *array);

int main(void) {
    int length_array;
    while (scanf("%d", &length_array) != EOF) {
        int array[length_array];
        for (int i = 0; i < length_array; i++) {
            scanf("%4d", &array[i]);
        }

        sort(length_array, array);
        printElements(length_array, array);
    }

    return 0;
}

void swap(int *greater, int *lesser) {
    int temp = *greater;
    *greater = *lesser;
    *lesser = temp;

    return;
}

void sort(int length_array, int *array) {
    while (1) {
        int swapped = 0;
        for (int i = 0; i < length_array - 1; i++) {
            if (array[i] > array[i + 1]) {
                swap(&array[i], &array[i + 1]);
                swapped = 1;
            }
        }
        if (swapped == 0) {
            break;
        }
    }

    return;
}

void printElements(int length_array, int *array) {
    for (int i = 0; i < length_array; i++) {
        printf("%04d\n", array[i]);
    }

    return;
}

