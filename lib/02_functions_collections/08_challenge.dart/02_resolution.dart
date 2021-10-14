void main() {
  //! Detail about String
  //! String has 3 fields (name|age|sex)
  final people = [
    'Felipe Sales|17|Masculine',
    'Karol Barroso|17|Feminine',
    'Felipe Sales|17|Masculine',
    'Maverick Alekyne Ribeiro|17|Masculine',
    'Daniel Vaz|17|Masculine',
    'Daniel Vaz|17|Masculine',
    'Rebeca Sales|22|Feminine',
    'Karol Barroso|17|Feminine',
    'Shadai Sales|20|Masculine',
    'Pedro Yago|18|Masculine',
    'Gustavo Tito|12|Masculine',
    'Pedro Yago|18|Masculine',
    'Yerich Sales|43|Masculine',
  ];

  //! Based on the list above
  // ! | 1 | Remove duplicate patients and present the new list
  // Basic:
  ////final personsWithoutDuplicate = people.toSet().toList();
  ////print(personsWithoutDuplicate);
  // Complex:
  final personsWithoutDuplicate =
      people.toSet().map((e) => e.split('|')).toList();
  personsWithoutDuplicate.forEach((p) => print('1 | ${p[0]}'));

  // ! | 2 | Show me the amount of people per sex (Male and Female) and then show me their names
  final personBySex = <String, List<String>>{};
  for (var person in personsWithoutDuplicate) {
    final sex = person[2].toLowerCase();
    final listMasculine = personBySex['M'] ?? <String>[];
    final listFeminine = personBySex['F'] ?? <String>[];
    if (sex == 'masculine') {
      listMasculine.add(person[0]);
    }
    if (sex == 'feminine') {
      listFeminine.add(person[0]);
    }
    personBySex['M'] = listMasculine;
    personBySex['F'] = listFeminine;
  }
  final masculine = personBySex['M'] ?? <String>[];
  final feminine = personBySex['F'] ?? <String>[];
  print('2 | Masculine - ${masculine.length}');
  masculine.forEach(print);
  print('2 | Feminine - ${feminine.length}');
  feminine.forEach(print);

  // ! | 3 | Filter and leave the list only with people over 18 years old and present these people by name
  final listLegalAge = personsWithoutDuplicate.where((p) {
    final age = int.tryParse(p[1]) ?? 0;
    // if (age > 18) {
    //   return true;
    // }
    return age > 18;
  }).toList();
  listLegalAge.forEach((p) => print('3 | ${p[0]}, with ${p[1]} years'));

  // ! | 4 | Find the oldest person and present their name.
  final personListOrder = [...personsWithoutDuplicate];
  personListOrder.sort((person1, person2) {
    final agePerson1 = int.tryParse(person1[1]) ?? 0;
    final agePerson2 = int.tryParse(person2[1]) ?? 0;
    return agePerson2.compareTo(agePerson1);
  });
  final personOldest = personListOrder.first;
  print('4 | ${personOldest[0]}, with ${personOldest[1]} years');
}
