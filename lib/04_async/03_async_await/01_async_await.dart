Future<void> main() async {
  // var message = proccess1().then((message) {
  //   proccess2()
  //       .then((message) => print(message))
  //       .catchError((error) => print(error));
  //   print('message is $message');
  // }).catchError((error) {
  //   print(error);
  // });

  // print('message is $message');

  try {
    var message1 = await proccess1();
    print('message is $message1');

    var message2 = await proccess2();
    print('message is $message2');

    await proccess3();
  } on Exception catch (err) {
    print('error to call process3 | $err');
  }
}

Future<String> proccess1() {
  print('starting proccess1');
  return Future.delayed(
      Duration(seconds: 3), () => 'Finishing process | proccess1');
}

Future<String> proccess2() {
  print('starting proccess2');
  return Future.delayed(
      Duration(seconds: 3), () => 'Finishing process | proccess2');
}

Future<String> proccess3() {
  print('starting proccess3');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
