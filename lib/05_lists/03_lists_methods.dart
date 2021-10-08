void main() {
  final numbers = [1, 2, 3];
  print(numbers);

  numbers.add(5);
  print(numbers);

  //                 0       1
  final names = ['Felipe', 'Karol'];
  print(names);
  names.add('Felipe Jr');
  print(names);
  print(names[0]);
  print(names[1]);

  names.insert(0, 'Victoria');
  print(names);

  names.addAll(['F1', 'F2']);
  print(names);

  names.remove('Felipe');
  print(names);

  names.removeWhere((name) {
    print('Name search: $name: ');
    if (name == 'Felipe') {
      return true;
    } else {
      return false;
    }
  });
  print(names);

  print(names[0]);
  print(names.first);

  print(names.length - 1);
  print(names.last);

  var firstName = names.firstWhere((name) => name == 'F1');
  print(firstName);

  final numbersGenerate = List.generate(10, (index) => index + 1);
  print(numbersGenerate);

  final stringsGenerate = List.generate(10, (index) => 'Indíce: ${index + 1}');
  print(stringsGenerate);

  final loops = List.filled(10, 'Karol');
  print(loops);

  final stringsGenerateForCalc = List.generate(100, (index) => index + 1);

  var sum = stringsGenerateForCalc.fold<int>(
    0,
    (previousValue, number) => previousValue + number,
  );
  print(sum);

  // Spread Operator -> list inside lists
  var listNumbersSpread1 = [3, 4, 5];
  var listNumbersSpread = [1, 2, 3];
  listNumbersSpread.addAll(listNumbersSpread1);
  print(listNumbersSpread);

  var listNumbersSpread2 = [3, 4, 5];
  var listNumbersSpread3 = [1, 2, 3, ...listNumbersSpread1];
  print(listNumbersSpread3);

  // Collection if
  var activePromotion = true;
  var products = [
    'Beer',
    'Coca Cola',
    if (activePromotion) 'Orange Juicy',
  ];
  print(products);

  // Collection for
  var listInts = [1, 2, 3];
  var listStrings = ['#0', for (var i in listInts) '#$i'];
  print(listStrings);

  var join = listStrings.join(' -> ');
  print(join);
}
