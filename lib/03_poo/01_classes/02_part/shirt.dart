// Modifier
// - public
// - private
// protected -> not exists

// Characters
// Behaviors

class Shirt {
  // Attributes - instance
  String? size;
  String? _color;
  String? logo;

  // theoretically does not change
  // instance of class
  static const String name = 'Shirt :D';
  static const String _name2 = 'Shirt 2  :D';

  // method class
  static String retrieveName() => name;
  static String retrieveName2() => _name2;

  // getters and setters
  String? get color => color;
  set color(String? color) {
    _Shirt2();
    if (color == 'Black') {
      throw Exception('Can\'t do Black');
    }
  }

  // Behaviors - Functions
  String type() {
    if (logo == 'Nike') {
      return 'Do not wash in the washing machine';
    } else {
      return 'Wash in the washing machine';
    }
  }

  String _type() {
    if (logo == 'Nike') {
      return 'Do not wash in the washing machine';
    } else {
      return 'Wash in the washing machine';
    }
  }
}

class _Shirt2 {
  void retrieveColor() {
    var shirt = Shirt();
    shirt._color = 'Black';
  }
}
