String? fullName;
int? age;

void main() {
  //var fullNameLocal = fullName;

  // if (fullNameLocal != null) {
  //   print(fullNameLocal.toUpperCase());
  // } else {
  //   print('Without name');
  // }

  //var fullNameLocal = fullName ?? 'Felipe Sales';
  //print(fullNameLocal.toUpperCase());

  // conditional property operator -> verify and implements the conditionals (null aware operator etc), e.g
  print(fullName?.toUpperCase() ?? 'Without name');
  print(age?.round() ?? 'Without age');
}
