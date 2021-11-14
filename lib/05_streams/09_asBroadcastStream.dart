Future<void> main() async {
  print('Start');

  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.asBroadcastStream().take(5); // most listeners, can create most .listen

  stream.listen((number) {
    print('1 | Listen value: $number');
  });

  stream.listen((number) {
    print('2 | Listen value: $number');
  });

  print('End');
}

int callback(int value) {
  print('Value is $value');
  return (value + 1) * 2;
}
