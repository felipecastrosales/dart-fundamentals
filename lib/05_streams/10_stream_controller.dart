import 'dart:async';

Future<void> main() async {
  print('Start');

  final streamController = StreamController<int>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((number) => number % 2 == 0)
      .map((event) => 'value even: $event')
      .listen((stringConvert) {
    print('stringConvert: $stringConvert');
    print(stringConvert);
  });

  var numbers = List.generate(20, (index) => index);

  for (var number in numbers) {
    print('send number: $number');
    inStream.add(number);
    //streamController.add(number);
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('End');
  streamController.close();
}
