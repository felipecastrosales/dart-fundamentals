import 'repositories/city_repositories.dart';
import 'repositories/user_repository.dart';

void main() async {
  var cityRepository = CityRepository();
  var userRepository = UserRepository();

  try {
    var city = await cityRepository.searchCep();
    var user = await userRepository.findAllUsers(1);
    print(city);

    print(user?.name ?? 'User not find');

  } catch (e) {
    print('Error to search city');
    print('Error to find users');
  }
}
