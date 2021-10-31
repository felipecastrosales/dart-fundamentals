import 'person.dart';

void main() {
  var person1 = const Person(name: 'Felipe Sales', age: 17);
  var person2 = const Person(name: 'Felipe Sales', age: 17);
  var person3 = const Person(name: 'Felipe Sales ', age: 17);

  print(person1 == person2); // true
  print(person1 == person3); // false

  
// without const
// 1 - person1 = Person()
// 2 - person2 = Person()

// with const
// 1 - person1 = Person()
// 2 - person2 = 

}
