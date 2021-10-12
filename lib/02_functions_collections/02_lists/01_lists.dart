void main() {
  var numbers = List.generate(4, (index) => index);
  numbers.forEach(print);
  numbers.forEach(printing);

  // Expand
  // array bidimensions
  print('.expand');
  var list = [
    [1, 2],
    [3, 4],
  ];
  print(list[0][0]);

  var newList1 = [...list[0], ...list[1]];
  print(newList1);

  var newList2 = list.expand((numbers) => numbers).toList();
  print(newList2);

  // any
  print('.any');
  final searchList1 = ['Felipe', 'Karol'];
  if (searchList1.any((name) => name == 'Felipe')) {
    print('Has Felipe');
  } else {
    print('Has not Felipe');
  }

  // every
  print('.every');
  final searchList2 = ['Felipe', 'Karol'];
  if (searchList2.every((name) => name.contains('l'))) {
    print('all contains L');
  } else {
    print('not all contains L');
  }

  // sort
  print('.sort');
  var sortListInt = [90, 04, 07, 11, 08, 10, 09, 20, 17];
  sortListInt.sort();
  print(sortListInt);

  var sortListString = ['Felipe', 'Karol', 'Cristiano'];
  sortListString.sort();
  print(sortListString);

  var sortListPeople1 = [
    'Felipe|17',
    'Karol|17',
    'Cristiano|36',
    'CR7|36',
  ];

  var newListSort = [...sortListPeople1];

  newListSort.sort((person1, person2) {
    final personData1 = person1.split('|');
    final personData2 = person2.split('|');
    final personAge1 = int.parse(personData1[1]);
    final personAge2 = int.parse(personData2[1]);
    if (personAge1 > personAge2) {
      return 1;
    } else if (personAge1 == personAge2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(sortListPeople1);
  print(newListSort);

  // compareTo
  print('.compareTo');
  var sortListPeople2 = [
    'Felipe|17',
    'Karol|17',
    'Cristiano|36',
    'CR7|36',
  ];

  sortListPeople2.sort((person1, person2) {
    final personData1 = person1.split('|');
    final personData2 = person2.split('|');
    final personAge1 = int.parse(personData1[1]);
    final personAge2 = int.parse(personData2[1]);
    //   if (personAge1 > personAge2) {
    //     return 1;
    //   } else if (personAge1 == personAge2) {
    //     return 0;
    //   } else {
    //     return -1;
    //   }
    return personAge1.compareTo(personAge2);
  });
  print(sortListPeople2);

  // Persons by function
  var person3 = [
    'Cristiano|36',
    'Neymar|30',
    'Kroos|29',
    'CR7|36',
  ];
  print('Before: $person3');
  anyFunc(person3);
  print('After: $person3');
}

void printing(Object value) {
  print(value);
}

void anyFunc(List<String> people) {
  final localPeople = [...people];
  localPeople.sort((person1, person2) {
    final personData1 = person1.split('|');
    final personData2 = person2.split('|');
    final personAge1 = int.parse(personData1[1]);
    final personAge2 = int.parse(personData2[1]);
    return personAge1.compareTo(personAge2);
  });
  print(localPeople);
}
