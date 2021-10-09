void main() {
  var numbers = List.generate(10, (index) => index);
  var names = ['Felipe', 'Sales', 'Daniel'];

  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  print('printing with for');
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  // for-in
  print('printing with for-in');
  for (var number in numbers) {
    print(number);
  }

  print('printing with for-in');
  for (var name in names) {
    print(name);
  }

  // break
  print('printing with break and for');
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
    //if (names[i] == 'Sales') {
    if (i == 1) {
      break;
    }
  }

  print('printing with for-in and break');
  for (var name in names) {
    print(name);
    if (name == 'Sales') {
      break;
    }
  }

  print('printing with for and continue');
  for (var i = 0; i < names.length; i++) {
    if (i == 1 || i == 2) {
      continue;
    }
    print(names[i]);
  }

  // lists example
  // Collection for
  print('printing Collection for');
  var listInts = [1, 2, 3];
  var listStrings = ['#0', for (var i in listInts) '#$i'];
  print(listStrings);

}
