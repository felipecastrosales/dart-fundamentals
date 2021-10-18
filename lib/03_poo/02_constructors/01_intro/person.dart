class Person {
  String? name;
  int? age;
  String? sex;

  // default constructor - automatically
  // Person();

  // Person(String nameConstruct, int ageConstruct, String sexConstruct) {
  //   name = nameConstruct;
  //   age = ageConstruct;
  //   sex = sexConstruct;
  // }

  // Person({
  //   required String nameConstruct /*= 'name'*/,
  //   required int ageConstruct,
  //   required String sexConstruct,
  // }) {
  //   name = nameConstruct;
  //   age = ageConstruct;
  //   sex = sexConstruct;
  // }

  // default
  Person({
    required this.name/*= 'name'*/,
    required this.age,
    required this.sex,
  });

  // named constructor
  Person.withoutName({
    required this.age,
    required this.sex,
  });

  Person.empty();

  // factory/fabric instance of Person
  // do all after return
  // is used when have business rules to class
  factory Person.fabric(String nameConstruct) {
    var name = nameConstruct + ' factory';
    var person = Person.empty();
    person.name = name;
    return person;
  }
}
