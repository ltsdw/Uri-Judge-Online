/* title: Feijão
* number of the problem: 2791
* date: 01/09/21
* author: ltsdw */

#include <iostream>


int main(int argc, const char* argv[])
{
    using std::cin, std::cout;

    for (int i = 0; i < 4; ++i)
    {
        int a;
        cin >> a;

        if (a)
        {
            cout << ++i << '\n';
            break;
        }
    }

    return EXIT_SUCCESS;
}
