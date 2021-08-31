/* title: Cálculo Simples
* number of the problem: 1010
* date: 29/08/21
* author: ltsdw */

#include <iostream>
#include <limits>
#include <iomanip>
#include <cassert>

// overly engineered piece of garbage
// just to practice some concepts

void dum_line()
{
    // explicit disabling warning for unused values
    #pragma GCC diagnostic push
    #pragma GCC diagnostic ignored "-Wunused-value"
    using std::cin, std::numeric_limits, std::streamsize;
    cin.clear();
    cin; // dum cin
    cin.ignore(numeric_limits<streamsize>::max(), ' ');
    #pragma GCC diagnostic pop
}

template <typename T>
void get_next(T& value, const int& at_index = 1)
{
    assert(at_index > 0 && "at_index must be greater than 0");

    using std::cin;

    for (int i = 0; i < at_index - 1; ++i) dum_line();

    cin >> value;
}

double pricing()
{
    double qnt{}, price{};

    get_next(qnt, 2);
    get_next(price);

    return qnt * price;
}

int main(int argc, const char* argv[])
{
    using std::cout, std::fixed, std::setprecision;

    double total{pricing() + pricing()};

    cout << fixed << setprecision(2);
    cout << "VALOR A PAGAR: R$ " << total << '\n';

    return EXIT_SUCCESS;
}
