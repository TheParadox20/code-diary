use std::io; //import the input/output library from the standard library

fn main() {
    println!("Guess The number!");
    println!("Please enter a number.");
    let mut guess = String::new();
    io::stdin().read_line(&mut guess).expect("failed to read line");
    println!("you guessed: {}",guess);
}
