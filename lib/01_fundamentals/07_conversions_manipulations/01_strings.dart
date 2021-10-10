void main() {
  final name = 'Felipe Sales';

  var subStringName = name.substring(7);
  print(subStringName);

  var subStringName2 = name.substring(0, 7);
  print(subStringName2);

  var sex = 'Man';
  var sexLetter = sex.substring(0, 1);
  print(sexLetter);

  if (sexLetter == 'M') {
    print('your are Man');
  }

  if (sex.startsWith('M')) {
    print('your are Man');
  }

  if (sex.toLowerCase().startsWith('m')) {
    print('your are Man');
  }

  if (sex.toLowerCase().contains('Sales')) {
    print('Sales family');
  }

  // Interpolation
  var firstName = 'Luis';
  var secondName = 'Felipe';
  var fullName1 = 'Hi ' + firstName + secondName + 'welcome';
  var fullName2 = 'Hi $firstName $secondName welcome';
  print(fullName1);
  print(fullName2);
  print('Hi ${firstName.toLowerCase()}');

  // split
  var person = 'Felipe|17|Flutter & Dart Student|CE';
  var namePerson = person.substring(0, 6);
  var agePerson = person.substring(7, 9);
  print(namePerson);
  print(agePerson);
  // best is with split
  var dataPerson = person.split('|');
  print(dataPerson);
  print(dataPerson[1]);
  print(dataPerson[2]);

  for (var data in dataPerson) {
    print(data);
  }

  dataPerson.forEach(print);
  dataPerson.forEach((data) => print(data));

  var people = [
    'Felipe Sales|17|Flutter & Dart Student|CE',
    'Karol Barroso|17|Marketing Student|CE',
    'Maverick Alekyne Ribeiro|17|Vagabundo Student|CE',
  ];

  for (person in people) {
    var dataPerson = person.split('|');
    var fullName = dataPerson[0];
    var names = fullName.split(' ');
    print(names.last);
  }
}
