// Association

class Person {
  String? name;

  // Composition -> when atribute is mandatory
  Address addres = Address();
  CPF cpf = CPF();

  // Agregation -> when atribute isn't mandatory
  Phone? phone;
}

class CPF {}

class Phone {}

class Address {}
