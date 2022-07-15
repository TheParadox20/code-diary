void main(List<String> args) {
  var message = StringBuffer('What is this Buffer');
  for (var i = 0; i < 5; i++) {
    message.write('!');
    print(message);
  }

  var list = [1,3,5,7];
  for(var item in list){//for-in loop
    print(item);
  }

  var numbers = [1,2,3,4,5,6,7,8];
  print('Get Even numbers');
  numbers
    .where((element) => element%2==0)
    .forEach((element) {print(element);});
  
  //Switch statements in Dart compare integer, string, or compile-time constants using ==
  var command = 'OPEN';
  switch (command){ //# A case clause can have local variables, which are visible only inside the scope of that clause.
    case 'CLOSED':
      print('executeClosed');
      break;
    case 'PENDING':
      break;//Dart does support empty case clauses, allowing a form of fall-through:
    case 'APPROVED':
      print('executeApproved()');
      continue nowOpen; //You can use a continue statement and a label to create a fall through
    nowOpen:
    case 'OPEN':
      print('executeOpen()');
      break;
    case 'DENIED':
      print('executeDenied()');
      break;
    default:
      print('executeUnknown()');
  }

  //Assert
  // assert(<condition>, optionalMessage);
  assert(command=='OPE','Assertion with command FAiled');
}