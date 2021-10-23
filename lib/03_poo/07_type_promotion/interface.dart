import 'car.dart';
import 'uno.dart';
import 'gol.dart';

// Variables top level isn't promote automatically
// class atributes also
Car golCar2 = Gol();

void main() {
  // String? name;
  // //name.toLowerCase();
  // if (name != null) {
  //   name.toLowerCase();
  // }

  var uno = Uno();
  var gol = Gol();

  Car golCar = Gol();
  //golCar.wheelsType();
  var typeWheels = (golCar as Gol).wheelsType();
  print('type Wheels: $typeWheels');

  // When is checked variable is a type, if is:
  // Dart convert this instance to class of type
  if (golCar is Gol) {
    golCar.wheelsType();
  }

  // Variables top level isn't promote automatically
  // class atributes also
  // if (golCar2 is Gol) {
  //   golCar2.wheelsType();
  // }

  if (golCar2 is Gol) {
    (golCar2 as Gol).wheelsType();
  }

  // var typeWheels2 = (uno as Gol).wheelsType();
  // print('type Wheels: $typeWheels2');

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
    '${car.maximunVelocity()} - '
    '${car is Gol ? car.wheelsType() : 'Not exists'}',
  );
}
