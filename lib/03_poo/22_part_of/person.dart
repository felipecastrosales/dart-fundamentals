import 'package:dart_fundamentals/03_poo/04_association/person.dart';

part 'address.dart';
part 'cpf.dart';

class Pessoa {
  String? nome;

  // Composition
  // When association atribute is mandatory
  // we talk about composition !!!
  _AddressPO address = _AddressPO();
  CPF cpf = CPF();

  // Agregation
  // When agregation atribute is optional (isn't mandatory)
  // We talk about agregation !!!
  Phone? phone;
}
