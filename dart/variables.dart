//import 'package:characters/characters.dart';

void main(List<String> args) {
  var name = 'Cathy'; //Infered type
  String city = 'Kitengela';
  Object age = 20;//use Object if not restricted to single type
  int lineCount=3;
  assert(lineCount == null); //ignored during production build; throws an exception if condition is false

  //LATE variables -> declaring non-nullable variables that's initialized after declaration && lazily initializing variables
  late double temperature = 1.34;

  //Final && const -> never intend to change a variable, use final or const, either instead of var or in addition to a type
  final friend = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  //const is used for variables that you want to be compile-time constants.
  const bar = 1000000;
  const double atm = 1.01325*bar;
  //const for constant values; You can change the value of a non-final, non-const variable, even if it used to have a const value
  var foo = const [];// constant value
  foo = [1,2,3];

  /*
    BUILT IN TYPES
  Numbers(int, double)
  Strings(String)
  Booleans(bool)
  Lists(List, AKA arrays)
  Sets(Set)
  Maps(Map)
  Runes(Runes)
  Symbol(Symbol)
  null(Null)

    Other Types
  Object -> super class of all dart classes
  Enum -> superclass of al enums
  Future and Stream -> USed in asynchrony support
  Iterable -> USed in for-in loops and in synchronus generator functions
  Never -> Indicates an expression can never finish evaluating
  dynamic -> Indicates you want to disable static checking
  void -> ...
  */
  
  /*   NUMBERS 
  * int & double -> subtypes of num
  */
  var x = 1;
  var hex = 0xDEADBEEF;
  var exponents = 1.42e5;
  print(exponents);
  num y = 4.5; //y can have both int and double values

  // Type casting string to number and vice versa
  var one = int.parse(("890"));
  var onePointOne = double.parse("1.1");
  String oneAsString = 1.toString();
  String pi = 3.14159.toStringAsFixed(3);
  //Bitwise operations on nums
  //bitwise shift (<<, >>, >>>), complement (~), AND (&), OR (|), and XOR (^) operators, which are useful for manipulating and masking flags in bit fields. 
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  /* STRINGS
  * Either single or double quotes to create a string:
  * You can put the value of an expression inside a string by using ${expression}. If the expression is an identifier, you can skip the {}
  * Use toString() method to get string corresponding to an object
  * String concatenation is done using adjacent string literals or the + operator
  * Multiline strings using '''....''' or """....."""
  */ 
  var s1 = '''
  You can create
  multi-line strings like this one.
  ''';
  print(s1);
  print("$name leaves in $city");
  var birthYear = 2002;
  int currentYear = 2022;
  print("Your age is ${currentYear-birthYear}");

  /* LISTS (arrays)
  * list literals are denoted by a comma separated list of expressions or values, enclosed in square brackets 
  * get a list’s length using the .length
  * access a list’s values using the subscript operator ([])
  * the spread operator (...) and the null-aware spread operator (...?), provide a concise way to insert multiple values into a collection
  */
  var list = [1,2,3,5];
  list[3]=4;
  print(list);
  //using the spread operator (...) to insert all the values of a list into another list
  var list1 = [0,...list];
  var list2 = [0, ...?list1];//using the null aware operator to prevent exceptions caused by possible null values
  print(list2);
  //Collection if && collection for
  var nav = ['Home', 'Furniture', 'Plants', if (false) 'Outlet', if(true) 'Contacts'];
  print(nav);
  var intsList = [1,2,3,4];
  var stringList = ['#0',for(var i in intsList) '#$i'];
  print(stringList);


  /* SETS
  *  An unordered collection of unique items
  *  To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set
  *  Add items to an existing set using the add() or addAll() methods
  */
  var names = <String>{'Abner','Josephine','Felicia'};
  Set<String> majina = {for(name in names) "$name"}; //creating sets
  // var names = {}; // Creates a map, not a set
  names.add('Sam');
  print(names);
  print(majina);

  /* MAPS
  *  A map is an object that associates keys and values
  *  Each key occurs only once, but you can use the same value multiple times
  *  If you look for a key that isn’t in a map, you get null in return
  */
  var nobleGAses = {
    //key: Value
    2: 'helium',
    10: 'neon',
    18: 'orgon'
  };
  //using a Map constructor
  var gifts = Map<String, String>();
  gifts['Bro'] = 'Audi';
  gifts['Me'] = 'Double Cabin';
  gifts['siz'] = 'V8';

  /* RUNES and Grapheme Clusters
  * to express a Unicode code point is \uXXXX, where XXXX is a 4-digit hexadecimal value
  * 
  */
  print('\u{1f606}''\u2665');

  /* SYMBOLS
  * 
  */
  print(#radix);
}