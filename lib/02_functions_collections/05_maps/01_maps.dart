void main() {
  final person = <String, String>{
    'name': 'Felipe Sales',
    'courses': 'Felipos Dev',
  };

  Map<String, String> personNullSafety1 = {};
  // The map can be null, but if it is created it must contain the non-null value and key
  Map<String, String>? personNullSafety2 = null;
  // The map and value can't be null, but the key can be null
  Map<String?, String> personNullSafety3 = {null: 'Flutter'};
  // The map and key can't be null, but the value can be null
  Map<String, String?> personNullSafety4 = {'Flutter': null};

  var clients = <String, String>{};
  // only add if not exists
  clients.putIfAbsent('name', () => 'Felipe Sales');
  print(clients);
  clients.putIfAbsent('name', () => 'Karol de Paula');
  print(clients);
  clients.update('name', (value) => 'Cristiano Ronaldo');
  // error -> clients.update('number', (value) => '7');
  print(clients);
  clients.update('number', (value) => '7', ifAbsent: () => '7');
  print(clients);

  // recovering value
  print('Client: ${clients['name']}');

  // forEach -> simple structure
  clients.forEach((key, value) {
    print('Key: $key | Value: $value');
  });

  // forin -> process async
  for (var entry in clients.entries) {
    print('Key: ${entry.key} | Value: ${entry.value}');
  }

  for (var key in clients.keys) {
    print('Key: $key');
  }

  for (var value in clients.values) {
    print('Value: $value');
  }

  var newMap = clients.map((key, value) {
    return MapEntry(key + '_upper', value.toUpperCase());
  });
  print(newMap);

  var map = <String, dynamic>{
    'name': 'Felipe Sales',
    'courses': [
      {
        'name': 'Felipos Dev',
        'description': 'Be the best dev.',
      },
      {
        'name': 'Guerrilha Code',
        'description': 'Be the guerrilheiro best dev.',
      },
    ]
  };
  print(map);
  print(map['courses']);
}
