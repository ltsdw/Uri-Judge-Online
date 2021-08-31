/* title: Salário com Bônus
* number of the problem: 1009
* date: 29/08/21
* author: ltsdw */

#include <iostream>
#include <iomanip>
#include <limits>

void dum_line()
{
    // explicit disabling warning for unused values
    #pragma GCC diagnostic push
    #pragma GCC diagnostic ignored "-Wunused-value"
    using std::cin, std::numeric_limits, std::streamsize;
    cin; // dum cin
    cin.ignore(numeric_limits<streamsize>::max(), '\n');
    #pragma GCC diagnostic pop
}

double wage_with_bonus(double& wage, double& sales)
{
    constexpr int bonus{15};

    return (wage + (sales * bonus / 100));
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::fixed, std::setprecision;

    dum_line();

    double wage{};
    cin >> wage;

    double sales{};
    cin >> sales;

    cout << fixed << setprecision(2);
    cout << "TOTAL = R$ " << wage_with_bonus(wage, sales) << '\n';

    return EXIT_SUCCESS;
}
