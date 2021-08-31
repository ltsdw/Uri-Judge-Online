/* title: Capital
* number of the problem: 2428
* date: 05/08/21
* author: ltsdw */

#include <iostream>
#include <algorithm>
#include <array>
#include <iterator>

using std::array;

char resolve(const array<unsigned, 4>& areas)
{
    if (areas[0] * areas[3] == areas[1] * areas[2])
        return 'S';

    return 'N';
}

int main(int argc, const char* argv[])
{
    using std::cin, std::cout, std::sort, std::begin, std::end;

    array<unsigned, 4> areas;

    for (char i = 0; i < 4; ++i)
    {
        cin >> areas[i];
    }

    sort(areas.begin(), areas.end());

    cout << resolve(areas) << '\n';

    return EXIT_SUCCESS;
}
