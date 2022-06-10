pub fn control(){
    let age=31;
    let gender = "male";
    if age>18 && gender=="male" {
        println!("old dude");
    } else if age>18 && gender=="female" {
        println!("old dudet");
    }
    else{
        println!("baby alert");
    }

    //switch case  -> age
    match age {
        18 => {
            println!("ID stage");
        }
        _ => { //default
            println!("What are you");
        }
    }
}