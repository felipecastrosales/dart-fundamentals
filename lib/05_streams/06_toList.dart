Future<void> main() async {
  print('Start');

  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  final data = await stream.toList();

  print(data);

  print('End');
}

int callback(int value) {
  print('Value is $value');
  return (value + 1) * 2;
}
