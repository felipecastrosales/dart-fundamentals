import 'banana.dart';
import 'mammal.dart';

class Monkey extends Mammal {
  @override
  void eat(Banana fruit) {
    print(fruit.type);
  }
}
