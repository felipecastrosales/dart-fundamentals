import 'car.dart';

class Uno implements Car {
  @override
  int doors = 1;

  @override
  String motor = '1.0';

  @override
  int wheels = 4;

  @override
  int maximunVelocity() {
    return 160;
  }

}