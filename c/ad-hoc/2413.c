#include <stdio.h>

int return_num_clicks_link_1(int num_clicks_link_3) {
    return ( (num_clicks_link_3 * 2) * 2 );
}

void print_num_clicks(int num_clicks_link_3) {
    printf("%d\n", return_num_clicks_link_1(num_clicks_link_3));
}

int main(void) {
    int num_clicks_link_3;
    scanf("%d", &num_clicks_link_3);

    print_num_clicks(num_clicks_link_3);

    return 0;
}
