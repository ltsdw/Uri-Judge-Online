/* title: Diferença
* number of the problem: 1007
* date: 29/08/21
* author: ltsdw */

#include <iostream>
#include <array>

using std::array;

void init_array(array<long, 4>& nums)
{
    using std::cin;

    for (long& num : nums) cin >> num;
}

long prod_difference(const array<long, 4>& nums)
{
    return ((nums[0] * nums[1]) - (nums[2] * nums[3]));
}

int main(int argc, const char* argv[])
{
    using std::cout;

    array<long, 4> nums{};
    init_array(nums);

    cout << "DIFERENCA = " << prod_difference(nums) << '\n';

    return EXIT_SUCCESS;
}
