pub fn show(){
    println!("hello sankore");
    let name = "sam";
    println!("Hello {}",name);
    //positional formating
    println!("{1} {0}",name,"hello");
    //Named arguments
    println!();
    //
    println!("{:?}",(34,56))
}