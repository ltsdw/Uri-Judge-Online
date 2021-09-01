/* title: Dama
 * problem number: 1087
 * date: 16/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <stdbool.h>

int dama(int x1, int y1, int x2, int y2);

int main(void) {

    while(true) {
        int x1, y1, x2, y2;
        scanf("%d%d%d%d", &x1, &y1, &x2, &y2);
        
        if ( (x1 == 0) && (x2 == x1) && (x2 == y1) && (y2 == x2) ) {
            break;
        } else {
            printf("%d\n", dama(x1, y1, x2, y2));
        }
    }

    return 0;
}

int dama(int x1, int y1, int x2, int y2) {
    if ( (x1 == x2) && (y1 == y2) ) {
        return 0;
    } else if ( (x2 - x1) == -(y2 - y1) || -(x2 - x1) == -(y2 - y1) || -(x2 - x1) == (y2 - y1) || (x2 - x1) == (y2 - y1) ) {
        return 1;
    } else if ( (x1 == x2) || (y1 == y2) ) {
        return 1;
    } else {
        return 2;
    }
}
