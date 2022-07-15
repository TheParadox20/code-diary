/*
* Exceptions are errors indicating that something unexpected happened
* Dart provites Exception && Error types
* Arbitrar
y objects can also be thrown
*/

void listError() {
  var list = ['sam','cathy'];
  var customError = 'Too small';
  try{
    print(list[7]);
    if(list.length<3){
      throw customError;
    }
  } catch (customError,s){ //Catch takes two parameters: the thrown exception and A stack trace
    print('Caught custom error $customError');
    print('Stack trace $s');
  }
  catch (e){
    print('Found error');
  }
  print('Continue code');
}

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void main(List<String> args) {
  print('Before Exception');
  if(false){
    //Throwing or raising exceptions
    throw 'Out of llamas!';
    throw FormatException('Expected at least 1 section');
  }
  //Catching an exception
  //This stops the exception from propagating
  //you can use either on or catch or both. Use on when you need to specify the exception type. Use catch when your exception handler needs the exception object.

  try {
    print('Inside a try block');
    var myError = 'Customize';
    throw myError;
    if (true) {
      throw FormatException('Error inside try block');
    }
  } on FormatException{
    print('Caught error succesfuly');
  } catch(myError) {
    print('Caught custom error');
  }
  
  //Handling code that might throw multiple errors
  var OutOfLlamasException;
  void breedMoreLlamas(){
    OutOfLlamasException = 'Out of llamas!';
    throw OutOfLlamasException;
  }
  void buyMoreLlamas(){}

  try {
    breedMoreLlamas();
  } catch (OutOfLlamasException) {
    // A specific exception
    buyMoreLlamas();
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }

  //Rethrow
  //Used to allow an exception propagate
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }

  //Finally
  //To ensure some code wether or not an exception is thrown
  //If no catch clause matches the exception, the exception is propagated after the finally clause runs

  try{
    // ignore: deprecated_member_use
    throw CastError();
  }on CastError{
    print("Oooh! ooooh Catch caught me");
  }
  finally{
    print("Finally I'm caught");
  }
  print('After Exception');
}