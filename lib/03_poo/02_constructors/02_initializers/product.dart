class Product {
  final int _id;
  final String name;
  final double _price;

  //Product(this.id, this.name, this.price);
  Product({
    required int id,
    required this.name,
    required double price,
  })  : _id = id,
        _price = price {
    print(_id);
    print(_price);
  }

  factory Product.fabric({
    required int id,
    required String name,
    required double price,
  }) {
    return Product(id: id, name: name, price: price);
  }
}
