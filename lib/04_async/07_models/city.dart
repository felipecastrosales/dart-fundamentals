import 'dart:convert';

class City {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  City({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  factory City.fromJson(String source) => City.fromMap(jsonDecode(source));

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
    return 'City(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}


//     {
//       "cep": "01001-000",
//       "logradouro": "Praça da Sé",
//       "complemento": "lado ímpar",
//       "bairro": "Sé",
//       "localidade": "São Paulo",
//       "uf": "SP",
//       "ibge": "3550308",
//       "gia": "1004",
//       "ddd": "11",
//       "siafi": "7107"
//     }