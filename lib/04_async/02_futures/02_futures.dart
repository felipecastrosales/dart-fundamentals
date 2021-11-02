void main() {
  print('starting');

  delay1();
  // 2 status:  (incomplete, complete (with value, with error))
  // complete with value: then
  // complete with error: catchError or onError
  // whenComplete always executed

  delay2().then((message) => print(message));
  //delay3();

  delay3()
      .then(
        (message) => print('delay3: $message'),
      )
      .catchError(
        (error) => print('delay3: $error'),
      )
      .whenComplete(() => print('finishing with error'));

  delay3().then(
    (message) => print('delay3: $message'),
    onError: (error) => print(
      'delay3 with onError in then: $error',
    ),
  );

  delay3().then(
    (message) {
      //throw Exception();
    },
    onError: (error) => print(
      'delay3 with onError in then: $error',
    ),
  );

  delay3()
      .then((value) => print('delay3 - value: $value'))
      .whenComplete(() => print('finishing with success'));

  print('finishing');
}

Future<String> delay3() {
  print('Starting delay3');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

Future<String> delay2() /*async*/ {
  print('starting delay2');
  return Future.delayed(
      Duration(seconds: 3), () => 'Finishing process | delay2');
}

Future<void> delay1() async {
  print('starting delay1');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 4) {
      print(i);
      i++;
    }
  });
  print('finishing delay1');
}
