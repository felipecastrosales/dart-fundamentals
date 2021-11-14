import 'dart:async';

Future<void> main() async {
  print('Start');

  final streamController = StreamController<Person>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream.listen((person) {
    print('Welcome person: ${person.name}');
  });

  var numbers = List.generate(20, (index) => index);

  for (var number in numbers) {
    print('send number: $number');
    inStream.add(Person(name: 'Felipe Sales | $number'));
    //streamController.add(number);
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('End');
  streamController.close();
}

class Person {
  String name;
  Person({
    required this.name,
  });
}
