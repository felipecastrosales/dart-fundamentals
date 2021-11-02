Future<void> main() async {
  var names = ['Felipe', 'Karol', 'Italo'];

  // Future.forEach<String>(names, (name) {
  //   names.forEach((name) async {
  //     print(await welcome(name));
  //   });
  // });

  // for (var name in names) {
  //   print(await welcome(name));
  // }

  var namesFuture = names.map((name) => welcome(name)).toList();
  var welcomes = await Future.wait(namesFuture);
  print(welcomes);

  var namesFuture2 = [welcome('Felipe'), welcome('Karol')];
  var welcomes2 = await Future.wait(namesFuture2);

}

Future<String> welcome(String name) async {
  print('Starting $name');
  return Future.delayed(Duration(seconds: 1), () {
    print('finishing $name');

    return 'Hello $name';
  });
}

// Future<void> p1() async {
//   await welcome('name');
// }

// Future<String> p2() async {
//   await welcome('name');
//   return Future.value();
// }
