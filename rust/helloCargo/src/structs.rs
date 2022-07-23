pub fn structure(){
    let me: Person = Person::new("Paradox", 20);
    let siz: Person = Person::new("Josephine", 23);
    let bro: Person = Person::new("Abner", 25);

    me.printInfo();
    siz.printInfo();
    bro.printInfo();
}

struct Person{
    name: String,
    age: u32
}

impl Person { //used to impliment methods for the class
    fn new(name : &str, age: u32) -> Self{ // new == constructor
        Self{name: name.to_string(), age: age}
    }

    fn printInfo(&self){
        println!("{} {} ",self.name,self.age);
    }
}