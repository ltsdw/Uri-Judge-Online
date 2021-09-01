/* title: Consumo
 * number of the problem: 1014
 * date: 31/08/2021
 * author: ltsdw
 */

#include <iostream>
#include <iomanip>

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::fixed, std::setprecision;

    double a, b;
    cin >> a >> b;

    cout << fixed << setprecision(3);
    cout << a / b << " km/l" << '\n';

    return EXIT_SUCCESS;
}
