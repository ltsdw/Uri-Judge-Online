/* title: Média 2
* number of the problem: 1006
* date: 28/08/21
* author: ltsdw */

#include <iostream>
#include <iomanip>

double average(double& note_1, double& note_2, double& note_3)
{
    constexpr double weight_1{2};
    constexpr double weight_2{3};
    constexpr double weight_3{5};

    return (((note_1 * weight_1) + (note_2 * weight_2) + (note_3 * weight_3)) / (weight_1 + weight_2 + weight_3));
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::setprecision, std::fixed;

    double note_1, note_2, note_3;
    cin >> note_1;
    cin >> note_2;
    cin >> note_3;

    cout << fixed;
    cout << setprecision(1);
    cout << "MEDIA = " << average(note_1, note_2, note_3) << '\n';

    return EXIT_SUCCESS;
}
