import 'dog.dart';

void main() {
  var dog = Dog(age: 10);
  dog.size = 'short';
  print(dog.receiveAge());
  print(dog.calculateAgeHuman());

  print(
    '${dog.size} - '
    '${dog.age} - '
    '${dog.calculateAgeHuman()}',
  );
}
