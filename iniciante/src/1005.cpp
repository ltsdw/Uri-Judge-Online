/* title: Média 1
* number of the problem: 1005
* date: 28/08/21
* author: ltsdw */

#include <iostream>
#include <iomanip>

double average(double& note_1, double& note_2)
{
    constexpr double weight_1{3.5};
    constexpr double weight_2{7.5};

    return (((note_1 * weight_1) + (note_2 * weight_2)) / (weight_1 + weight_2));
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::setprecision, std::fixed;

    double note_1, note_2;
    cin >> note_1;
    cin >> note_2;

    cout << fixed;
    cout << setprecision(5);
    cout << "MEDIA = " << average(note_1, note_2) << '\n';

    return EXIT_SUCCESS;
}
