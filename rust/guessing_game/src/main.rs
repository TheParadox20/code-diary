use std::io; //import the input/output library from the standard library
use rand::Rng;

fn main() {
    println!("Guess The number!");
    println!("Please enter a number.");
    let mut guess = String::new(); //the "::" indicates new is an associated function of type String
    //associated methods are on a type rather than on instance of the type
    io::stdin().read_line(&mut guess).expect("failed to read line"); //the stdin function returns anan instance of std::io::Stdin, which is a type that represents a handle to the standard input for your terminal
    //read_line(<mutable string variable>)takes whatever a user types into standard input and place into a string
    //& => means a reference to a variable: references are immutable by default
    //the read_line() method returns a io::Reasult type thats used in error handling
    
    //getting the random number
    let secret_number = rand::thread_rng().gen_range(0..10);

    println!("you guessed: {} and the right number is {}",guess,secret_number);
}
