fn functon(){//function declaration -> default scope private
    println!("hello functions");
}
fn params(name: &str){
    println!("Function says hello {}",name);
}
fn generous(name: &str) -> String {
    let mut present = String::from("whats happening");
    present
}
pub fn function(){
    functon();
    params("sammy");
    let returned = generous("sam");
}