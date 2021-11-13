import 'package:http/http.dart' as http;

import 'package:dart_fundamentos/04_async/08_repositories/models/user.dart';

class UserRepository {
  Future<User?> findAllUsers(int id) async {
    var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/$id';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    }
  }
}
