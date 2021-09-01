/* title: Esfera
* number of the problem: 1011
* date: 30/08/21
* author: ltsdw */

#include <iostream>
#include <cmath>
#include <iomanip>

double volume(const double& radius)
{
    using std::pow;

    constexpr double PI{3.14159};

    return 4 * PI * pow(radius, 3) / 3;
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::fixed, std::setprecision;

    double radius;
    cin >> radius;

    cout << fixed << setprecision(3);
    cout << "VOLUME = " << volume(radius) << '\n';

    return EXIT_SUCCESS;
}
