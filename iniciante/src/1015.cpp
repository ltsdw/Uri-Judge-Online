/* title: Distância Entre Dois Pontos
 * number of the problem: 1015
 * date: 31/08/2021
 * author: ltsdw
 */

#include <iostream>
#include <iomanip>
#include <cmath>

double distance(const double& x1, const double& y1, const double& x2, const double& y2)
{
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::fixed, std::setprecision;

    double x1, y1, x2, y2;
    cin >> x1 >> y1 >> x2 >> y2;

    cout << fixed << setprecision(4) << distance(x1, y1, x2, y2) << '\n';

    return EXIT_SUCCESS;
}
