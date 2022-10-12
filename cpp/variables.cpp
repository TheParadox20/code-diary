#include <iostream>
using namespace std;
/**
 * Every name and expression has a type
 * type determines the operations that may be performed
 * A declaration is a statement that introduces a name into the program
 * Size of a type is imolementation-define (can vary among differnt machines) and can be obtaines by the sizeof() operator
 *      sizeof(bool)
 * When defining a variable one doesn't need to state it's type explicitly when it can be deduced from the initializer
 *      auto xyz = 'a';
 *                  CONSTANTS
 * Immutabele variables, two possible notations
 *  const
 *  constexpr -> evaluated at compile time
 * For a function to be used in a constant expression, it must be defines as constexpr
 *  constexpr double square(double x) { return x*x; }
 */
int main(int argc, char const *argv[]){
    int x = 9;
    // type/object variable(named object) = value(set of bits interpreted according to a type)
    int y {7}; //assignment using {}
    // int z {4.5}; // -> results in an error
    int z = 4.5; //casts to int (4)
    
    auto xyz = 'a'; // char

    const int dmv =17;
    int const vmd = 71;

    cout<<x << " : "<<y<<endl;
    cout<<sizeof(x)<<endl;
    cout<<sizeof(char)<<endl;
    return 0;
}
