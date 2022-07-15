//function DECLARATION && RETURN
bool isEqualToOne(int value){
  return value==1;
}
//Function shorthand || arrow syntax
bool isEmpty(value) => value==null; //The => is a shorthand for {return expr;}

/* PARAMETERS
* A function can have any number of required positional parameters.
* These can be followed either by named parameters or by optional positional parameters (but not both).
* Named parameters are optional unless they’re explicitly marked as required.
* A function can use = to define default values for optional parameters
# Collections can be passed as parameters and functions as items in a collection
* Dart is a lexically scoped language
# All functions return a value. If no return value is specified, the statement return null;
*/
void enableFlags({bool? bold=false, required bool? hidden}){} //defining named parameter {par1,par2} and giving a default value

void say(String from, String msg, [String? device]) {} //function with optional positional parameters [par1,par2]

//Assigning a function to a variable
var loudify = (String msg) => '!!! ${msg.toUpperCase()} !!!';

/* ANONYMUS FUNCTIONS
*(pars){...code...}
*/
void main(List<String> args) {
  enableFlags(hidden: false); //calling named parameters
  print(loudify('fuck society'));
  const list = ['apples','bananas','oranges'];
  list.forEach((element) {
    print('${list.indexOf(element)}: $element');
  });
}