void main() {
  var list = ['Felipe'];
  print(list.hashCode);
  print(list);
  func1(list);
  print(list);

  var name = 'Felipe Sales';
  print(name);
  print(name.hashCode);
  func2(name);
  print(name);
  print(name.hashCode);

  var oneList = ['Felipe'];
  print(list);
  add(list);
  print(list);

  var listProduct = ['Chocolate'];
  print(listProduct);
  var value = calculateCart(listProduct);
  print(value);
  print(listProduct);
}

void func1(List<String> names) {
  print(names.hashCode);
  if (names.isNotEmpty) {
    names.clear();
  }
}

void func2(String name) {
  name += ' Karol';
  print(name);
  print(name.hashCode);
}

List<String> add(List<String> names) {
  var newNames = [...names];
  newNames.add('Felipe Sales');
  print(newNames);
  return newNames;
}

int calculateCart(List<String> products) {
  products.clear();
  return 10;
}
