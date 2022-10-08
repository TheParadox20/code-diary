fun main(){
    val guests = 30
    if (guests==0){
        println("No guests")
    }else{
        println("message")
    }
    //Ranges: data type containing a span of comparable variables, are bounded, objects in a range can be mutable or immutable
    // created using the range operator ..
    if(50 in 1..100){}
    
    /** when statement
     * similar to switch
     * can be used as an expression or statement
     * when used as an expression the else statement is compulsory
     * result can be assigned to variables
     * To define a common behaviour for multiple cases, combine conditions in single line with a comma
     * Scope of variables introduced in when subject is limited to scope of when
     */
    val results = 80
    when(results){
        0 -> println("Loser!!")
        in 1..49 -> println("Below avaerage")
        50 -> println("Just average")
        else -> {
            println("Must be a genius")
        }
    }
    //can be used to replace if statetement, by not including a subject
    when{
        results%2==0 -> println("Even")
        else -> println("Odd")
    }

    //      FOR LOOPS
    val pets = arrayOf("Dog","Cat","Parrot","Toad")
    for(elements in pets){
        print(elements + ' ')
    }
    println("")
    //enumerate over array
    for((i, pet) in pets.withIndex()){
        println("Item at $i is $pet")
    }
    //step, sizes and ranges
    for(i in 1..5) print(i)
    println("")
    for(i in 5 downTo 1) print(i)
    println("")
    for(i in 'a'..'z' step 2) print(i)
    println("")

    //  Repeat Loops
    repeat(4)  {print('z') }
}