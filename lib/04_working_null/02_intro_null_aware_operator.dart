String? name;

void main() {
  print(name);

  //var fullName = ((name != null) ? name! + 'Felipe' : 'Felipe Sales');

  var fullName2;
  if (name != null) {
    fullName2 = name! + 'Felipe';
  } else {
    fullName2 = 'Felipe Sales';
  }

  print(fullName2);

  var localName = name;
  if (localName == null) {
    localName = 'Felipe';
  }

  var fullName3 = localName + ' Sales';
  print(fullName3);
}
