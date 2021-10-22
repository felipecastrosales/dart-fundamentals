import 'banana.dart';
import 'fruit.dart';
import 'human.dart';
import 'monkey.dart';

void main() {
  var human = Human();
  human.eat(Fruit());

  var monkey = Monkey();
  monkey.eat(Banana('nanica'));
}
