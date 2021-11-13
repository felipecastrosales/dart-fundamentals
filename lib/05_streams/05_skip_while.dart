Future<void> main() async {
  print('Start');

  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((number) {
    print('number in stream - skipWhile: $number');
    return number < 5;
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
