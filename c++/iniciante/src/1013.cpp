/* title: O Maior
* number of the problem: 1013
* date: 30/08/21
* author: ltsdw */

#include <iostream>

template <typename T>
T greater(const T& a, const T& b)
{
    // return (a > b) ? a : b;
    return ((a + b + abs(a - b)) / 2);
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout;

    int a, b, c;
    cin >> a >> b >> c;

    cout << greater(greater(a, b), c) << " eh o maior" << '\n';

    return EXIT_SUCCESS;
}
