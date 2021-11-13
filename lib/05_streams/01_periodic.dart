Future<void> main() async {
  print('Start');

  final interval = Duration(seconds: 2);

  final stream = Stream<int>.periodic(interval, callback);

  // await for
  await for (var i in stream) {
    print(i);
  }

  print('End');

}

int callback(int value) {
  print('Value is $value');
  return (value + 1) * 2;
}
