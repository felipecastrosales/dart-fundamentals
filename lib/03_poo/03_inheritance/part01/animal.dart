abstract class Animal {
  String? size;
  final int age;
  //final String name;

  Animal({required this.age, /*required this.name*/});

  int receiveAge() {
    return age;
  }

  int calculateAgeHuman();
}
