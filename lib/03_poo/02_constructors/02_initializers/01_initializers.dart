import 'client.dart';
import 'product.dart';

void main() {
  var product = Product(id: 1609, name: 'shirt CR7', price: 91.99);
  print(product);

  var client = Client(name: 'Felipe Sales');
  print(client);

  var productFabric = Product.fabric(id: 7, name: 'Shopee', price: 20.00);
  print(productFabric);
}
