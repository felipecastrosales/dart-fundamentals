String? name;

void main() {
  var lastName = 'Sales';

  //var fullName = ((name != null) ? name! + 'Felipe' : 'Felipe Sales');
  var fullName = (name ?? 'Felipe') + lastName;
  print(fullName);

  String? fullName2;
  print(fullName2 ?? 'Without name');
}
