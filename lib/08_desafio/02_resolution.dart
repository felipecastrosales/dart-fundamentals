void main() {
  // ! Detail about String
  // ! String has 4 fields (Name|Age|Work|State|)

  final people = [
    // 0           1     2     3
    'Felipe Sales|17|Developer|CE',
    'Karol Barroso|17|Marketing|CE',
    'Maverick Alekyne Ribeiro|17|Vagabundo|CE',
    'Daniel Vaz|17|All|CE',
    'Rebeca Sales|22|Doctor Student|SP',
    'Shadai Sales|20|Merchant Marine|PR',
    'Pedro Yago|18|Student|CE',
    'Gustavo Tito|12|Student|CE',
    'Yerich Sales|43|developer|CE',
  ];

  //! Based on the matrix above, create a report where:
  // ! | 1 | Present people with more 18 years and print this
  for (var person in people) {
    final dataPerson = person.split('|');
    final age = int.tryParse(dataPerson[1]) ?? 0;
    if (age >= 18) {
      print('1 | Legal age: ${dataPerson[0]} - ${dataPerson[1]}');
    }
  }

  print('--------------------------------------------------------------------');

  // ! | 2 | Present people quantity have in profission ()
  final developers = [];
  final students = [];
  final doctors = [];
  final marketing = [];
  final vagabundo = [];
  final all = [];
  final merchantMarine = [];

  for (var person in people) {
    final dataPerson = person.split('|');
    final name = dataPerson[0];
    final profission = dataPerson[2].toLowerCase();

    if (profission == 'developer') {
      developers.add(name);
    }
    if (profission == 'students') {
      students.add(name);
    }
    if (profission == 'doctors') {
      doctors.add(name);
    }
    if (profission == 'marketing') {
      marketing.add(name);
    }
    if (profission == 'vagabundo') {
      vagabundo.add(name);
    }
    if (profission == 'all') {
      all.add(name);
    }
    if (profission == 'merchantMarine') {
      merchantMarine.add(name);
    }
  }

  // developers.forEach((name) => print('developers: $name'));
  // students.forEach((name) => print('students: $name'));
  // doctors.forEach((name) => print('doctors: $name'));
  // vagabundo.forEach((name) => print('vagabundo: $name'));
  // marketing.forEach((name) => print('marketing: $name'));
  // all.forEach((name) => print('all: $name'));
  // merchantMarine.forEach((name) => print('merchantMarine: $name'));

  print('2 | Developers: $developers');

  print('--------------------------------------------------------------------');

  // ! | 3 | Present quantity person who live in Ceará

  for (var person in people) {
    final dataPerson = person.split('|');
    final state = dataPerson[3].toLowerCase();
    if (state == 'ce') {
      print('3 | Cearenses: ${dataPerson[0]}');
    }
  }
}
