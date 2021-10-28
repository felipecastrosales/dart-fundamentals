void main() {
  //var person = Person();
  // person.name = 'Felipe Sales';
  // person.email = 'soufeliposales@gmail.com';
  // person.site = 'https://github.com/felipecastrosales';

  // var person = Person()
  Person()
    ..name = 'Felipe'
    ..email = 'soufeliposales@gmail.com'
    ..site = 'https://github.com/felipecastrosales'
    ..printPerson();

  // print(
  //   '${person.name} - '
  //   '${person.email} - '
  //   '${person.site}.',
  // );

  var map = <String, String>{}
    ..putIfAbsent('name', () => 'Felipe')
    ..putIfAbsent('email', () => 'soufeliposales@gmail.com')
    ..putIfAbsent('site', () => 'https://github.com/felipecastrosales');

  print(map);
}

class Person {
  String? name;
  String? email;
  String? site;

  void printPerson() {
    print('$name - $email - $site.');
  }
}
