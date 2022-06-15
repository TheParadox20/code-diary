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
    //structs::structure();
}

//tryCatch
fn adder(num: i32) -> i32{
    if num<50{
        num+num
    }else{
        panic!("too large");
        0;
    }
}

//TESTING
#[cfg(test)]
mod tests{
    use crate::adder;

    #[test]
    //#[should_panic]
    fn add_number(){
        assert!(8>3);
        assert_eq!(4,9);
        assert_ne!(5,5);
        let sum:i32 = adder(23);
    }
}