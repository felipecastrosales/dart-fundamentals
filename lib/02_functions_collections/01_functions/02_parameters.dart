void main() {
  // Mandatory - default
  print('sumInt: ${sumInt(10, 10)}');

  // Named: nullables by default and can promote to non-nullable
  print('sumDouble: ${sumDouble(num1: 10.0, num2: 10.0)}');
  print('sumDoubleMandatory1: ${sumDoubleMandatory1(num1: 10.0, num2: 10.0)}');
  print('sumDoubleMandatory2: ${sumDoubleMandatory2(num1: null, num2: 10.0)}');

  print('sumDoubleByDefault: ${sumDoubleByDefault()}');
  print('sumDoubleByDefault: ${sumDoubleByDefault(num1: 1, num2: 2)}');

  // Optional
  print('sumIntOptional: ${sumIntOptional()}');
  print('sumIntOptional: ${sumIntOptional(1)}');
  print('sumIntOptional: ${sumIntOptional(1, 1)}');

  // all
  allParametersWithNamed1(7, name: 'Felipe', age: 17);
  allParametersWithNamed2(7, 'Felipe', 17);
  allParametersWithNamed3(7, 11, 'Felipe', 17);
}

///////////////////////////////////////////////////////////////////////////////

int sumInt(int num1, int num2) {
  return num1 + num2;
}

double sumDouble({double? num1, required double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0.0;
}

double sumDoubleMandatory1({required double num1, required double num2}) {
  return num1 + num2;
}

double sumDoubleMandatory2({required double? num1, required double num2}) {
  // if (num1 == null) {
  //   num1 = 0.0;
  // }
  num1 ??= 0.0;
  return num1 + num2;
}

double sumDoubleByDefault({double num1 = 0.0, double num2 = 0.0}) {
  return num1 + num2;
}

int sumIntOptional([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

void allParametersWithNamed1(int num,
    {required String name, required int age}) {}

void allParametersWithNamed2(int num, [String? left, int? age]) {}

void allParametersWithNamed3(int num1, int num2, [String? left, int? age]) {}
