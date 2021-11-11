// Using Dart Data Class Generator

import 'dart:convert';

class CityEasy {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  CityEasy({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  factory CityEasy.fromMap(Map<String, dynamic> map) {
    return CityEasy(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  factory CityEasy.fromJson(String source) => CityEasy.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      cep: 'cep',
      logradouro: 'logradouro',
      complemento: 'complemento',
      bairro: 'bairro',
      localidade: 'localidade',
      uf: 'uf',
      ddd: 'ddd',
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  toString() {
    return 'CityEasy(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
