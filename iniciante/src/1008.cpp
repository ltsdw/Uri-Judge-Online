/* title: Salário
* number of the problem: 1008
* date: 29/08/21
* author: ltsdw */

#include <iostream>
#include <iomanip>

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::fixed, std::setprecision;

    long id{}, worked_hours{};
    double us_ph_worked{};

    cin >> id;
    cin >> worked_hours;
    cin >> us_ph_worked;

    cout << fixed << setprecision(2);
    cout << "NUMBER = " << id << '\n' << "SALARY = U$ " << worked_hours * us_ph_worked << '\n';

    return EXIT_SUCCESS;
}
