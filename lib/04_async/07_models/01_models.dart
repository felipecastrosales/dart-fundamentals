// import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'city.dart';
import 'user.dart';
import 'user_easy.dart';

Future<void> main() async {
  await searchCep();
  await searchUser();
}

Future<void> searchCep() async {
  var url = 'https://viacep.com.br/ws/62650000/json/';

  var response = await http.get(
    Uri.parse(url),
  );

  if (response.statusCode == 200) {
    // var responseData = convert.jsonDecode(response.body);
    // // print(response.body.runtimeType);
    // // print(responseData.runtimeType);

    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['logradouro']);
    //   print(responseData['localidade']);
    // }
    var city = City.fromJson(response.body);
    print(city);
    print(city.cep); // et cetera

    print(city.toMap());
    print(city.toJson());
  }
}

Future<void> searchUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print(user);
    var user1 = UserEasy.fromJson(response.body);
    print(user1);
  }
}
