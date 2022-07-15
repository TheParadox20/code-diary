/*    OOP
* Objects are instances of a class
* All classes descend from the Object class, except Null
* Objects have members: function(methods) and data(instance variables)
* Use . or ?.(for null safety) to access an objects members
# In dart, new keyword is optional

**   Constructors
* An object can be created using constructors
* Constructor names can be either <ClassName> or <ClassName>.<identifier>
* Declare a constructor by creating a function with the same name as its class (optionally, an additional identifier)
* Some classes provide constant constructors,
* Getting an objects type <object>.runtimeType
* If you don’t declare a constructor, a default constructor is provided for you. The default constructor has no arguments and invokes the no-argument constructor in the superclass.
* Subclasses don’t inherit constructors from their superclass.
* A named constructor is used to implement multiple constructors for a class or to provide extra clarity

**    Instance Variables
* All uninitialized instance variables have the null value
* All instanve variables generate an implicit getter method
* Non-final and late final instance variables without initializers also generate an implicit setter method
* Instance variables can be final 
* to assign the value of a final instance variable after the constructor body starts, you can use: factory constructor || late final keywords
*/

//import 'dart:html';

class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.

  //Point(this.x, this.y); //# Initializing formal parameters
  //The variables introduced by the initializing formals are implicitly final and only in scope of the initializer list.
  Point(double x, double y){
    //this keyword refers to current instance
    //Use this only when there is a name conflict. Otherwise, Dart style omits the this.
    this.x = x;
    this.y = y;
  }
  Point.fromJson(var json): // Named constructors
    this.x=json['x'],
    this.y=json['y'];
}

class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
}

void main(List<String> args) {
  var point = Point(4,4);
  point.x = 4;
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.

  var me = ProfileMark('Sam');
  print(me.start);


  //using constructors
  var p = Point(2, 2);
  var x = p?.x; //if p is non-null, set a variable to its x value
  var p1 = Point(2, 2);
  var p2 = Point.fromJson({'x': 14.1, 'y': 2.3}); 
  print(p2.x);
  //var p = const ImmutablePoint(2, 2); //constant constructors, creating compile time constants
}