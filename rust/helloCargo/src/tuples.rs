// can group together values of differnt types

pub fn tuples(){
    let person: (&str, u32) = ("Abel",59);
    println!("{} {}",person.0,person.1);

}