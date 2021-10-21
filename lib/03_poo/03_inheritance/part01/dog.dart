import 'animal.dart';

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  @override
  int calculateAgeHuman() {
      return age * 7;
    
  }
}
