import 'shirt.dart';

void main() {
  // in Dart all is class
  String name = '';
  int age = 1;

  var shirtNike = Shirt();
  shirtNike.size = 'M';
  shirtNike.color = 'Black';
  shirtNike.logo = 'Nike';
  // shirtNike.type();
  print('${shirtNike.size} - ${shirtNike.color} - ${shirtNike.logo} -> ${shirtNike.type()}');

  var shirtAdidas = Shirt();
  shirtAdidas.size = 'M';
  shirtAdidas.color = 'Black';
  shirtAdidas.logo = 'Adidas';
  print('${shirtAdidas.size} - ${shirtAdidas.color} - ${shirtAdidas.logo} -> ${shirtNike.type()}');
}
