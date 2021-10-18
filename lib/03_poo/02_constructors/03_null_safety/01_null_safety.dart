import 'client.dart';

late final String name;

// be very careful with the 'late' and '!'

void main() {
  var client = Client(name: 'Felipe');
  client.name = 'Felipe';
  print(client.name);
  client.name = 'Felipe';
  print(client.name);

  // error -> print(client.age!.toLowerCase());
  // if (client.age != null) {
  //   print(client.age!.toLowerCase());
  // }
  print(client.age?.toLowerCase() ?? '');

  name = 'Felipe';
  print(name);
  name = 'Sales';
  print(name);
}
