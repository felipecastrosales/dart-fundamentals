import 'package:http/http.dart' as http;

import 'package:dart_fundamentals/04_async/08_repositories/models/city.dart';

class CityRepository {
  Future<City> searchCep() async {
    var url = 'https://viacep.com.br/ws/62650000/json/';

    var response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      return City.fromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
