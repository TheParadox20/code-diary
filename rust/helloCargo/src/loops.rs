pub fn loops(){
    let mut counter: i32 = 0;
    loop{ //infinite loop
        println!("{}",counter);
        if counter>=10{
            break;
        }
        counter+=1;
    }
    //while loop
    counter=0;
    while counter<=10{
        println!("while {}",counter);
        if counter>=10{
            break;
        }
        counter+=1;
    }
    //for loop
    for x in 0..10{
        println!("for {}",x);
    }
    //loops and arrays
    let mut mrA: [i32; 5] = [1,2,3,4,5];
    for item in mrA.iter(){
        println!("array itteration {}",item);
    }
}