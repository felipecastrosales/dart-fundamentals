String? name;

void main() {
  // =   -=   /=   %=  >>=  ^=
  // +=  *=  ~/=  <<=  $=   |=

  var num = 1;
  print(num);
  num = num + 2;
  num += 2;
  print(num);

  var num2 = 2.0;
  num2 /= 1.0;
  print(num2);

  print(name);
  //name = 'Karol';
  // if (name == null) {
  //   name = 'Felipe';
  // }
  name ??= 'Felipe';
  print(name);
}
