void main() {
  final age = 17;
  print(age);

  print(age.toString());
  print('Your age is ' + age.toString());
  print('Your age is $age');

  final value = -20;

  if (value.isNegative) {
    print(value);
  }

  final valueDouble = 10.65;
  print(valueDouble.round());
  print(valueDouble.roundToDouble());

  final valueString = '17';
  final valueString2 = 'Felipe';

  final valueInt = int.parse(valueString);
  final valueInt2 = int.tryParse(valueString2);
  print(valueInt);
  print(valueInt2);

  final price = 21.00;
  print(price.toStringAsFixed(2));
}
