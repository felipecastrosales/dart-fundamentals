void main() {
  var numList = <int?>[];
  numList.add(1);
  numList.add(2);
  numList.add(null);
  numList.add(2);
  numList.add(1);
  print(numList);

  var numSet = <int?>{};
  numSet.add(1);
  numSet.add(2);
  numSet.add(null);
  numSet.add(2);
  numSet.add(1);
  print(numSet);

  print('.toSet | ${numList.toSet()}');

  numSet.forEach(print);

  var num1 = {1, 2, 3, 4, 5, 6};
  var num2 = {1, 3, 4, 7};

  print('1 - .difference | ${num1.difference(num2)}');
  print('2 - .difference | ${num2.difference(num1)}');

  print('.union | ${num1.union(num2)}');

  print('.intersection | ${num1.intersection(num2)}');
  var names1 = {'Felipe', 'Karol'};
  var names2 = {'Felipe', 'Cristiano Ronaldo'};
  print('.intersection | ${names1.intersection(names2)}');

  print('.lookup | ${num1.lookup(7)}');
  print('.lookup | ${names1.lookup('Felipe')}');

  names1.elementAt(0);
  names1.toList()[0];
}
