#include <stdio.h>

int return_distance(int n_cases, int (*arr)[2]) {
    int distance = 0;

    for (int i=0; i < n_cases; i++) {
        distance += arr[i][0] * arr[i][1];
    }

    return distance;
}

void print_distance(int n_cases, int (*arr)[2]) {
    printf("%d\n", return_distance(n_cases, arr));
}

int main(void) {
    int n_cases;
    scanf("%d", &n_cases); 

    int arr[n_cases][2];

    for (int i=0; i < n_cases; i++) {
        for (int j=0; j < 2; j++) {
            scanf("%d", &arr[i][j]);
        }
    }

    print_distance(n_cases, arr);

    return 0;
}
