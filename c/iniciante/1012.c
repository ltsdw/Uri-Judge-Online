/* title: Esfera
 * number of the problem: 1011
 * date: 18/09/20
 * author: ltsdw
 */

#include <stdio.h>
#define PI 3.14159

typedef struct structures {
    double area_triangle;
    double area_circle;
    double area_trapezium;
    double area_square;
    double area_rectagle;
} structures;

structures data(double a, double b, double c);
void printData(structures area);

int main(void) {
    double a, b, c;
    scanf("%lf%lf%lf", &a, &b, &c);

    printData(data(a, b, c));

    return 0;
}

structures data(double a, double b, double c) {
    structures area;

    area.area_triangle = (a * c) / 2;
    area.area_circle = PI * (c * c);
    area.area_trapezium = (a + b) * c / 2;
    area.area_square = b * b;
    area.area_rectagle = a * b;

    return area;
}

void printData(structures area) {
    printf("TRIANGULO: %.3f\n", area.area_triangle);
    printf("CIRCULO: %.3f\n", area.area_circle);
    printf("TRAPEZIO: %.3f\n", area.area_trapezium);
    printf("QUADRADO: %.3f\n", area.area_square);
    printf("RETANGULO: %.3f\n", area.area_rectagle);

    return;
}
