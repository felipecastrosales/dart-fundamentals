import 'person.dart';

void main() {
  //var person = Person('Felipe', 17, 'Masculine');
  // var person = Person(
  //   nameConstruct: 'Felipe',
  //   ageConstruct: 17,
  //   sexConstruct: 'Masculine',
  // );

  var person = Person(
    name: 'Felipe',
    age: 17,
    sex: 'Masculine',
  );
  print(person.name);

  var personNamed = Person.withoutName(
    age: 17,
    sex: 'Masculine',
  );
  print(personNamed.name);

  var personFactory = Person.fabric('Felipe');
  print(personFactory.name);
}
