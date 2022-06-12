mod print;
mod variables;
mod conditionals;
mod vectors;
mod tuples;
mod loops;
mod functions;
mod structs;

fn main() {
    print::show();
    variables::vars();
    conditionals::control();
    vectors::vectors();
    tuples::tuples();
    loops::loops();
    println!("============= FUNCTIONS =============");
    functions::function();
    println!("============= STRUCTS =============");
    structs::structure();
}
