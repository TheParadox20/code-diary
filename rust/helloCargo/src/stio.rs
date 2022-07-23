use std::io;

fn main() {
    let mut n = String::new();
    io::stdin()
        .read_line(&mut n)
        .expect("failed to read input.");
    let n: i32 = n.trim().parse().expect("invalid input");
    println!("{:?}", n);

    let mut n = String::new();
    io::stdin()
        .read_line(&mut n)
        .expect("failed to read input.");
    let n = n.trim().parse::<i32>().expect("invalid input");
    println!("{:?}", n);

    let mut n = String::new();
    io::stdin()
        .read_line(&mut n)
        .expect("failed to read input.");
    if let Ok(n) = n.trim().parse::<i32>() {
        println!("{:?}", n);
    }
}