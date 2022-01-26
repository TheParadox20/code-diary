import java.util.Scanner;

//Standard input output
/*
output to terminal ->   System.out.print();
                        System.out.println();
                        System.out.error();
                        System.out.printf();
with the value to be output to the terminal being passed as an argument to the function
System.out is a standard library hence no need for importing it

input via the terminal -> Done in 2 steps
    1. Creating a scanner object
        Scanner <name> = new Scanner(System.in)
    2. Assigning a value to a variable via the next<...>() method in the Scanner class - done via the created object
        String name = <name>.next();
N/B the next() function has different variations depending on the datatype
*/

public class io {
    public static void main(String[] args) {
        System.out.print("paradox");// no new line
        int age;
        Scanner Age = new Scanner(System.in);
        age = Age.nextInt();
        System.out.println(" "+age);
        System.out.println("the end");
    }
}

/*
Worth listing escape sequences
\n
\t
\r
\b
\v
*/