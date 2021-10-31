import 'client.dart';

void main() {
  var client1 = Client(
    name: 'Felipe Sales',
    phone: '55 85 9 99028922',
  );
  var client2 = Client(
    name: 'Karol de Paula',
    phone: '55 85 9 99028922',
  );
  var client3 = Client(
    name: 'Italo Sales',
    phone: '55 85 9 99028922',
  );
  var client4 = Client(
    name: 'Lucas Sales',
    phone: '55 85 9 99028922',
  );

  var list = [
    client1,
    client2,
    client3,
    client4,
  ];

  print(list);

  //list.sort((client1, client2) => client1.name.compareTo(client2.name));
  list.sort();
  print(list);
}
