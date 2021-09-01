/* title: Sub-prime
 * number of the problem: 1105
 * date: 18/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <stdbool.h>

void check_credit(int n_ban, int n_ben, int *array);

int main(void) {
    int n_ban = 0, n_ben = 0;
    int array[25];

    while (scanf("%d%d", &n_ban, &n_ben), n_ban && n_ben) {
        for (int i = 1; i < (n_ban + 1); i++) {
            scanf("%d", &array[i]);
        }

        check_credit(n_ban, n_ben, array);
    }

    return 0;
}

void check_credit(int n_ban, int n_ben, int *array) {
    int bank = 0, lender = 0, dues = 0;
    bool boolean = false;

    while (n_ben--) {
        scanf("%d%d%d", &bank, &lender, &dues);
        
        array[bank] -=  dues;
        array[lender] += dues;

    }

    for (int i = 1; i < (n_ban + 1); i++) {
        if (array[i] < 0) {
            boolean = true;
            break;
        }
    }

    if (boolean) {
        printf("N\n");
    } else {
        printf("S\n");
    }

    return;
}
