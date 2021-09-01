/* title: Área
* number of the problem: 1012
* date: 30/08/21
* author: ltsdw */

#include <iostream>
#include <cmath>
#include <iomanip>

struct Shapes
{
    double triangle{};
    double circle{};
    double trapezium{};
    double square{};
    double rectangle{};
};

void area_of_shapes(Shapes* shapes, const double& a, const double& b, const double& c)
{
    using std::pow;

    constexpr double PI{3.14159};

    shapes->triangle = (a * c) / 2;
    shapes->circle = PI * pow(c, 2);
    shapes->trapezium = (a + b) * c / 2;
    shapes->square = pow(b, 2);
    shapes->rectangle = a * b;
}

void print_volume(const Shapes* shapes)
{
    using std::cout, std::fixed, std::setprecision;

    cout << fixed << setprecision(3);
    cout << "TRIANGULO: " << shapes->triangle << '\n';
    cout << "CIRCULO: " << shapes->circle << '\n';
    cout << "TRAPEZIO: " << shapes->trapezium << '\n';
    cout << "QUADRADO: " << shapes->square << '\n';
    cout << "RETANGULO: " << shapes->rectangle << '\n';
}

int main(int argc, const char* argv[])
{
    using std::cin;

    Shapes* shapes{new Shapes};

    double a, b, c;
    cin >> a >> b >> c;

    area_of_shapes(shapes, a, b, c);

    print_volume(shapes);

    delete shapes;

    return EXIT_SUCCESS;
}
