void main() {
  // have type, the name and atribuction value for variable

  // inteiros: 1, 2, 3...
  int age = 17;
  
  // decimals: 1.0, 2.0, 3.0...
  double value = 7.00;
  
  // num -> accept all types (double - int)
  num anyNum = 1.2;

  // texts
  String name = 'Felipe';

  // booleans: true or false
  bool isLoading = true;

  // follow camelCase
  // in dart all is classes

  // keyword 'var'
  // var detects the type of the variable with your value atributed 
  // don't put in 'num' type, because he understanding a int or double

  // Object -> all classes in system are inherit from Object
  // it could be anything (type), since they are all children of Object
  Object anyObject = '';

  // dynamic -> parece com Object
  dynamic anyDynamic = 'Dart';
  // podemos mudar o estado da variável com uma atribuição sem o var
  anyDynamic = 2;

}
