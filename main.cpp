#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calc;
    std::cout << "5 + 3 = " << calc.Add(5, 3) << "\n";
    std::cout << "5 - 3 = " << calc.Sub(5, 3) << "\n";
    return 0;
}
