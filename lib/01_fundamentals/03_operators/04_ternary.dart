void main() {
  // ternary
  // simplification if - else

  final age = 12;
  if (age >= 18) {
    print('of legal age');
  } else {
    print('NOT of legal age');
  }

  // final isLegalAge = if (age >= 18) { true } else { false }
  // ternary: (condition) ? true Do anything : false anything
  final isLegalAge = age >= 18 ? 'isss!' : 'nooot!';

  print('Is in legal age? - ' + isLegalAge.toString());

  // important: Do complex, have Caution
  // print(age < 13)
  //     ? 'Child'
  //     : (age > 12 && age < 18)
  //         ? 'Adolescent'
  //         : 'Adult';

}
