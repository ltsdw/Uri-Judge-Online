/* title: Área do Círculo
* number of the problem: 1002
* date: 28/08/21
* author: ltsdw */

#include <iostream>
#include <cmath>
#include <iomanip>

constexpr double PI = 3.14159;

double area(const double& radius)
{
    return (PI * pow(radius, 2));
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::setprecision, std::fixed;

    double radius;
    cin >> radius;

    cout << fixed;
    cout << setprecision(4);
    cout << "A=" << area(radius) << '\n';

    return EXIT_SUCCESS;
}
