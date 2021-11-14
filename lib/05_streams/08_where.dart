Future<void> main() async {
  print('Start');

  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((number) => number % 6 == 0).take(3); // true -> filter
  //stream = stream.skipWhile((number) => number % 6 != 0).take(3); -> invert = false - discard

  stream.listen((number) {
    print('Listen value: $number');
  });

  print('End');
}

int callback(int value) {
  print('Value is $value');
  return (value + 1) * 2;
}
