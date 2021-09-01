#include <stdio.h>

float return_salary(int *arr, float hour) {
    return (arr[1] * hour);
}

void print_info(int *arr, float salary) {
    printf("NUMBER = %d\nSALARY = U$ %.2f\n", arr[0], salary);
}

int main(void) {
    int arr[2];
    float hour;
    float salary;

    for (int i=0; i < 2; i++) {
        scanf("%d", &arr[i]);
    }

    scanf("%f", &hour);

    salary = return_salary(arr, hour);
    print_info(arr, salary);

    return 0;
}
