void main() {
  // before
  final names = ['Felipe', 'Sales'];
  final people1 = names.map((name) => Person(name)).toList();
  for (var person in people1) {
    print('Hi: ${person.name}');
  }

  // after - 2.15 -> testing in DartPad 
  // final people2 = names.map<Person>(Person.name).toList();
  // final people3 = names.map<Person>(Person.new).toList();
  // final people4 = names.map<Person>(Person.fromJson).toList();
  // for (var person in people2) {
  //   print('Hi: ${person.name}');
  // }
  
  anyFunction((String name) {
    
  });
  
  // anyFunction(Person.new);
  
  anyFunction(printPerson);
}

Person printPerson(String name) {
  return Person(name);
}

void anyFunction(void /*dynamic, Object, Person*/ Function(String) function) {
  function('Felipe');
}

class Person {
  final String name;
  Person(this.name);
  Person.name(this.name);
  
  factory Person.fromJson(String name) {
    return Person(name);
  }
}
