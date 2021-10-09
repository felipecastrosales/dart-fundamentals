void main() {
  var numbers = List.generate(10, (index) => index);

  // print('printing with for');
  // for (var i = 0; i < numbers.length; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(numbers[i]);
  // }

  numbers.where((theNumber) => theNumber != 5).forEach(
        (theNumber) => print(theNumber),
      );

  final numbersToTwo = numbers
      .takeWhile((number) => number > 6)
      .where((number) => number < 7)
      .toList();

  print(numbers);
  print(numbersToTwo);
  print(numbers[1]);
  print(numbersToTwo.elementAt(1));

  final removeToTwo = numbers.skipWhile((number) => number < 6).toList();
  print(removeToTwo);

  final names = ['Felipe', 'Karol'];
  var namesSkip = names.skipWhile((name) {
    if (name != 'Karol') {
      return true;
    } else {
      return false;
    }
  }).toList();

  var numbersMap = numbers.map((number) {
    return 'the value is: $number';
  }).toList();
  print(numbersMap);

  var numbersList = numbers.map((number) {
    return number + 10;
  }).toList();
  print(numbersList);

  final numberReverse = numbers.reversed.toList();
  print(numberReverse);
}
