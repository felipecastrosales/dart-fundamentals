import 'car.dart';
import 'uno.dart';
import 'gol.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  Car golCar = Gol();

  printCarData(uno);
  print(gol.wheelsType());

  printCarData(gol);
}

void printCarData(Car car) {
  print(
    '${car.runtimeType}: '
    '${car.doors} - '
    '${car.wheels} - '
    '${car.motor} - '
    '${car.maximunVelocity()}',
  );
}
