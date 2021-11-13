Future<void> main() async {
  print('Start');

  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.takeWhile((int number) {
    print('number in takeWhile is $number');
    return number <= 10; // do while false
  });

  // await for
  await for (var i in stream) {
    print('await for stop in: $i');
  }

  print('End');
}

int callback(int value) {
  print('Value is $value');
  return (value + 1) * 2;
}
