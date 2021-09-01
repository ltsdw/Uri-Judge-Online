/* title: Escultura à Laser
 * number of the problem: 1107
 * date: 17/09/20
 * author: ltsdw
 */

#include <stdio.h>

int laser(int *array, int height, int length);

int main(void) {
    int height, length;
    int array[10000];    

    while ( (scanf("%d%d", &height, &length), height && length) ) {
        for (int i = 0; i < length; i++) {
            scanf("%d", &array[i]);
        }

        printf("%d\n", laser(array, height, length));
    }

    return 0;
}

int laser(int *array, int height, int length) {
    int n_times_laser = height - array[0];

    for (int i = 1; i < length; i++) {
        if (array[i - 1] > array[i]) {
            n_times_laser += array[i - 1] - array[i];
        }
    }

    return n_times_laser;
}
