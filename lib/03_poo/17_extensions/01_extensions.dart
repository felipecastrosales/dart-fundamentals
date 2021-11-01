import 'person.dart';
import 'person_welcome_extension.dart';
import 'welcome_extension.dart';

void main() {
  var name = 'Felipe Sales | name';
  print(name.welcome());

  var person = Person(name: 'Felipe Sales | person');
  print(person.welcome());
}
