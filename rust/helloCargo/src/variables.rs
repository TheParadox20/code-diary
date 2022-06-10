/*
Variables hold primitive data or reference to data
VAriables are immutable by default
Rust is a block scoped language
    TYPES
Primitive types:
 Integer
 Floats: f32 f64
 Boolean (bool)
 Character (char)
 Tuples
 Arrays
*/
pub fn vars(){
    let name: &str = "George";
    let mut age: u32 = 87;
    age=20;
    const ID: &str = "1234";
    let money: f32 = 2000.20;
    let emoji = '\u{1F600}';
    println!("{}",emoji);
}