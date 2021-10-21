import 'animal.dart';

class Cat extends Animal {
  Cat({required age}) : super(age: age);

  @override
  int calculateAgeHuman() {
    return age * 15;
  }
}
