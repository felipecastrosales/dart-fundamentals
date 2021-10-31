class Client implements Comparable<Client> {
  String name;
  String phone;
  Client({
    required this.name,
    required this.phone,
  });

  @override
  String toString() => 'Client(name: $name, phone: $phone)';

  @override
  int compareTo(Client other) {
    print('calling compareTo: $this');
    return name.compareTo(other.name);
  }
}
