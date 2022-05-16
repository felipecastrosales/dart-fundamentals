void main() {
  List<int> numbers = [1, 2, 3];
  numbers.add(4);

  Map<String, dynamic> map = {'age': 18};

  final box = Box<Ball>();
  box.add(Ball());
  box.getItem();
  print(box.itemHeight());

  final boxToy = Box<Toy>();
  boxToy.add(Toy());
  Toy? itemToy = boxToy.getItem();
  print(boxToy.itemHeight());

  // final boxComputer = Box<Computer>();
}

class Box<I extends Item> {
  I? _item;

  void add(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double itemHeight() {
    return _item?.height() ?? 0;
  }
}

abstract class Item {
  double height();
}

class Ball extends Item {
  @override
  double height() {
    return 1.0;
  }
}

class Toy extends Item {
  @override
  double height() {
    return 0.5;
  }
}

class Telephone extends Item {
  @override
  double height() {
    return 0.5;
  }
}

class Computer {}
