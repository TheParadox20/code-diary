//primitive and non-primitive
pub fn ownership(){
    let mut name: String = "Samson".to_string();
    //greedy(name)
    reference(&name);
    mut_ref(&mut name);
    println!("New name {}",name);
}
pub fn reference(n: &String){
    println!("Your name is {}",n);
}
pub fn greedy(n: String){//function taking ownership
    println!("Your name is {}",n);
}
pub fn mut_ref(x: &mut String){//mutable reference
    println!("Going to edit {}",x);
    //x=String::from("_");
    x.push_str(" TheParadox")
}