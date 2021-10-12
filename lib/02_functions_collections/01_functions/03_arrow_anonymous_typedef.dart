void main() {
  // Arrow
  print(sumInt1(10, 10));
  print(sumInt2(10, 10));

  // Anonymous
  var name = '';
  var age = 17;
  var anyFunc = () {
    print('Called variable function');
    return '17';
  };

  print(name.runtimeType);
  print(age.runtimeType);
  print(anyFunc.runtimeType);
  print(anyFunc);
  print(anyFunc());

  () {
    print('Anonym');
  }();

  print('calling | calledFunctionOfParameter');
  calledFunctionOfParameter1((name) {
    if (name.isEmpty) {
      print('Name is empty');
    } else {
      print('Name is not empty: $name');
    }
  });

  // Typedef
  complexFunc2((name, fullName, {x1, x2, quantity}) => '');
}

// 3 parts
// 1 | return type
// 2 | name
// 3 | parameters (normals, nameds and optionals)

int sumInt1(int num1, int num2) {
  return num1 + num2;
}

int sumInt2(int num1, int num2) => num1 + num2;

void calledFunctionOfParameter1(Function(String name) functionReceiveName) {
  var calculate = 1 + 1;
  var completeName = 'Felipe Sales';
  print('finishing function: calledFunctionOfParameter1');
  print('calling : functionReceiveName');
  functionReceiveName(completeName);
}

void calledFunctionOfParameter2(FuncionReceiveName functionReceiveName) {
  var calculate = 1 + 1;
  var completeName = 'Felipe Sales';
  print('finishing function: calledFunctionOfParameter2');
  print('calling : functionReceiveName');
  functionReceiveName(completeName);
}

void complexFunc1(
    String Function(
  String name,
  String fullName, {
  required String? x1,
  required String? x2,
  int? quantity,
})
        name) {}

void complexFunc2(FuncionComplex name) {}

typedef FuncionReceiveName = void Function(String name);

typedef FuncionComplex = String Function(
  String name,
  String fullName, {
  required String? x1,
  required String? x2,
  int? quantity,
});
