void main() {
  var person = Person();
  person.name = 'Felipe';
}

class Person {
  String? _name;

  String? get name => _name;

  set name(String? name) {
    if (name != null && name.length > 3) {
      _name = name;
    }
  }
}
