void main() {
  // tem tipo, o nome e a atribuição de valor pra variável

  // inteiros: 1, 2, 3...
  int idade = 17;
  // decimais: 1.0, 2.0, 3.0...
  double valor = 7.00;
  // num -> aceita ambos os tipos
  num qualquerNumero = 1.2;

  // textos
  String nome = 'Felipe';

  // seguir camelCase
  // tudo no dart é classe

  // palavra reservada var
  // var detecta a tipagem da sua variável de acordo com o valor atribuído 
  // não consegue inferir no num, pois ele vai interpretar como int ou double

  // Object -> todas as classes do nosso sistema herdam de object
  // pode ser qualquer coisa (tipo), pois todos são filhos de Object
  Object objetoQualquer = '';

  // dynamic -> parece com Object
  dynamic dynamicQualquer = 'Dart';
  // podemos mudar o estado da variável com uma atribuição sem o var
  dynamicQualquer = 2;

}
