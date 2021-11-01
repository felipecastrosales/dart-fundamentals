import 'person.dart';

extension PersonWelcomeExtension on Person {
  String welcome() {
    return 'Hello $name';
  }
}
