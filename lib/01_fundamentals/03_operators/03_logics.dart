void main() {
  final name = 'Lucas';
  final sex = 'M';
  final age = 18;

  // Logic Operators
  // &&

  if (sex == 'M') {
    if (age >= 18) {
      print('Welcome');
    } else {
      print('No Welcome!');
    }
    print('No Welcome!');
  }

  // true and true to run (true)
  if (sex == 'M' && age >= 18) {
    print('Welcome');
  } else {
    print('No Welcome!');
  }

  // ||
  // only one can true
  if (sex == 'W' || age >= 18) {
    print('Welcome');
  } else {
    print('No Welcome!');
  }

  // '!'
  // invert value, condition...
  // true && false == false => true
  if (!(sex == 'M' && age >= 18)) {
    print('Welcome');
  } else {
    print('No Welcome!');
  }

  if (!(name != 'Lucas')) {
    
  }
}
