import 'person.dart';

void main() {
  var person1 = Person(
    name: 'Felipe',
    email: 'soufeliposales@gmail.com',
    phone: '55 99028922',
  );
  var person2 = Person(
    name: 'Felipe',
    email: 'soufeliposales@gmail.com',
    phone: '55 99028922',
  );

  print(person1.hashCode);
  print(person2.hashCode);

  print(person1);

  //person2 = person1;

  if (person1 == person2) {
    print('is equal');
  } else {
    print('isn\'t equal');
  }
}

// 1 - person1 = Person()
// 2 - person2 