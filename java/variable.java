//Variables and datatypes
/*
Instantiation -> To instantiate a variable means
<dataType> <name> = <value>;
Definition -> To define a variable means
<dataType> <name>;
Assignment -> T0 assign a variable means giving an existing variable a value
<name> = <value>;

Variable naming rules blablabla ... too common
Variable datatypes
String
int
double
float
char
bool

Type casting -> Process of converting a variable from one type to another: Implicit and explicit
*/

public class variable {
    public static void main(String[] args) {
        String name = "paradox";
        int age = 19;
        boolean time = age>18; //True
        char letter = 'g';
        //concatenation
        String greet = "Holla";
        String greeting = greet + " " + name;
        System.out.println(greeting);
        //Type casting
        String sAge = Integer.toString(age);
        int siAge = Integer.parseInt(sAge);
    }
}
/*
Worth mentioning the unicode can be used with the char variable and adding a char variable leads to the next char in the unicode

*/